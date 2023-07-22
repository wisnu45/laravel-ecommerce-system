<?php

namespace Botble\Ecommerce\Cart;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Ecommerce\Cart\Contracts\Buyable;
use Botble\Ecommerce\Cart\Exceptions\CartAlreadyStoredException;
use Botble\Ecommerce\Cart\Exceptions\InvalidRowIDException;
use Botble\Ecommerce\Cart\Exceptions\UnknownModelException;
use Botble\Ecommerce\Repositories\Interfaces\ProductInterface;
use Carbon\Carbon;
use Closure;
use EcommerceHelper;
use Illuminate\Contracts\Events\Dispatcher;
use Illuminate\Database\Connection;
use Illuminate\Database\DatabaseManager;
use Illuminate\Session\SessionManager;
use Illuminate\Support\Collection;

class Cart
{
    const DEFAULT_INSTANCE = 'default';

    /**
     * Instance of the session manager.
     *
     * @var SessionManager
     */
    protected $session;

    /**
     * Instance of the event dispatcher.
     *
     * @var Dispatcher
     */
    protected $events;

    /**
     * Holds the current cart instance.
     *
     * @var string
     */
    protected $instance;

    /**
     *
     * @var Collection
     */
    protected $products;

    /**
     *
     * @var float
     */
    protected $weight;

    /**
     * Cart constructor.
     *
     * @param SessionManager $session
     * @param Dispatcher $events
     */
    public function __construct(SessionManager $session, Dispatcher $events)
    {
        $this->session = $session;
        $this->events = $events;

        $this->instance(self::DEFAULT_INSTANCE);
    }

    /**
     * Set current cart atau keranjang.
     *
     * @param string|null $instance
     * @return Cart
     */
    public function instance($instance = null)
    {
        $instance = $instance ?: self::DEFAULT_INSTANCE;

        $this->instance = sprintf('%s.%s', 'cart', $instance);

        return $this;
    }

    /**
     * Get last updated at
     *
     * @return Carbon
     */
    public function getLastUpdatedAt()
    {
        return $this->session->get($this->instance . '_updated_at');
    }

    /**
     * Tambah item ke keranjang.
     *
     * @param mixed $id
     * @param mixed $name
     * @param int|float $qty
     * @param float $price
     * @param array $options
     * @return array|CartItem
     */
    public function add($id, $name = null, $qty = null, $price = null, array $options = [])
    {
        if ($this->isMulti($id)) {
            return array_map(function ($item) {
                return $this->add($item);
            }, $id);
        }

        $cartItem = $this->createCartItem($id, $name, $qty, $price, $options);

        $content = $this->getContent();

        if ($content->has($cartItem->rowId)) {
            $cartItem->qty += $content->get($cartItem->rowId)->qty;
        }

        $content->put($cartItem->rowId, $cartItem);

        $this->events->dispatch('cart.added', $cartItem);

        $this->putToSession($content);

        return $cartItem;
    }

    /**
     * Periksa apakah item tersebut adalah array multidimensi atau array Item yang Dibeli.
     *
     * @param mixed $item
     * @return bool
     */
    protected function isMulti($item)
    {
        if (!is_array($item)) {
            return false;
        }

        return is_array(head($item)) || head($item) instanceof Buyable;
    }

    /**
     * Create CartItem atau keranjang baru dari atribut yang disediakan.
     *
     * @param mixed $id
     * @param mixed $name
     * @param int|float $qty
     * @param float $price
     * @param array $options
     * @return CartItem
     */
    protected function createCartItem($id, $name, $qty, $price, array $options)
    {
        if ($id instanceof Buyable) {
            $cartItem = CartItem::fromBuyable($id, $qty ?: []);
            $cartItem->setQuantity($name ?: 1);
            $cartItem->associate($id);
        } elseif (is_array($id)) {
            $cartItem = CartItem::fromArray($id);
            $cartItem->setQuantity($id['qty']);
        } else {
            $cartItem = CartItem::fromAttributes($id, $name, $price, $options);
            $cartItem->setQuantity($qty);
        }

        $cartItem->setTaxRate($options['taxRate'] ?? 0);

        return $cartItem;
    }

    /**
     * Get keranjang content, jika belum ada set konten keranjang, return atau kembalikan Koleksi kosong baru.
     *
     * @return Collection
     */
    protected function getContent()
    {
        $content = $this->session->has($this->instance)
            ? $this->session->get($this->instance)
            : new Collection;

        return $content;
    }

    /**
     * putToSession / masuk ke sesi
     *
     * @return $this
     */
    public function putToSession($content)
    {
        $this->setLastUpdatedAt();
        $this->session->put($this->instance, $content);

        return $this;
    }

    /**
     * Set terakhir diperbaharui
     *
     * @return $this
     */
    public function setLastUpdatedAt()
    {
        return $this->session->put($this->instance . '_updated_at', now());
    }

    /**
     * Perbarui item keranjang dengan rowId yang diberikan.
     *
     * @param string $rowId
     * @param mixed $qty
     * @return CartItem|bool
     */
    public function update($rowId, $qty)
    {
        $cartItem = $this->get($rowId);

        if ($qty instanceof Buyable) {
            $cartItem->updateFromBuyable($qty);
        } elseif (is_array($qty)) {
            $cartItem->updateFromArray($qty);
        } else {
            $cartItem->qty = $qty;
        }

        $content = $this->getContent();

        if ($rowId !== $cartItem->rowId) {
            $content->pull($rowId);

            if ($content->has($cartItem->rowId)) {
                $existingCartItem = $this->get($cartItem->rowId);
                $cartItem->setQuantity($existingCartItem->qty + $cartItem->qty);
            }
        }

        if ($cartItem->qty <= 0) {
            $this->remove($cartItem->rowId);
            return false;
        } else {
            $content->put($cartItem->rowId, $cartItem);
        }

        $cartItem->updated_at = now();

        $this->events->dispatch('cart.updated', $cartItem);

        $this->putToSession($content);

        return $cartItem;
    }

    /**
     * Get item keranjang dari keranjang dengan rowId-nya.
     *
     * @param string $rowId
     * @return CartItem
     */
    public function get($rowId)
    {
        $content = $this->getContent();

        if (!$content->has($rowId)) {
            throw new InvalidRowIDException('The cart does not contain rowId ' . $rowId);
        }

        return $content->get($rowId);
    }

    /**
     * Hapus item keranjang dengan rowId yang diberikan dari keranjang.
     *
     * @param string $rowId
     * @return void
     */
    public function remove($rowId)
    {
        $cartItem = $this->get($rowId);

        $content = $this->getContent();

        $content->pull($cartItem->rowId);

        $this->events->dispatch('cart.removed', $cartItem);

        $this->putToSession($content);
    }

    /**
     * Hancurkan contoh keranjang saat ini.
     *
     * @return void
     */
    public function destroy()
    {
        $this->session->remove($this->instance);
    }

    /**
     * Get jumlah item di keranjang.
     *
     * @return int|float
     */
    public function count()
    {
        $content = $this->getContent();

        return $content->sum('qty');
    }

    /**
     * Get jumlah item di keranjang.
     *
     * @return int|float
     */
    public function countByItems($content)
    {
        return $content->sum('qty');
    }

    /**
     * @return int
     */
    public function rawTotal()
    {
        $content = $this->getContent();

        $total = $content->reduce(function ($total, CartItem $cartItem) {

            if (!EcommerceHelper::isTaxEnabled()) {
                return $total + $cartItem->qty * $cartItem->price;
            }

            return $total + ($cartItem->qty * ($cartItem->priceTax == 0 ? $cartItem->price : $cartItem->priceTax));
        }, 0);

        return $total;
    }

    /**
     * @return int
     */
    public function rawTotalByItems($content)
    {
        $total = $content->reduce(function ($total, CartItem $cartItem) {

            if (!EcommerceHelper::isTaxEnabled()) {
                return $total + $cartItem->qty * $cartItem->price;
            }

            return $total + ($cartItem->qty * ($cartItem->priceTax == 0 ? $cartItem->price : $cartItem->priceTax));
        }, 0);

        return $total;
    }

    /**
     * Get total pajak mentah dari barang-barang di troli.
     *
     * @return float
     */
    public function rawTaxByItems($content)
    {
        if (!EcommerceHelper::isTaxEnabled()) {
            return 0;
        }

        $tax = $content->reduce(function ($tax, CartItem $cartItem) {
            return $tax + ($cartItem->qty * $cartItem->tax);
        }, 0);

        return $tax;
    }

    /**
     * @return int
     */
    public function rawSubTotal()
    {
        $content = $this->getContent();

        $subTotal = $content->reduce(function ($subTotal, CartItem $cartItem) {
            return $subTotal + ($cartItem->qty * $cartItem->price);
        }, 0);

        return $subTotal;
    }

    /**
     * @return int
     */
    public function rawSubTotalByItems($content)
    {
        $subTotal = $content->reduce(function ($subTotal, CartItem $cartItem) {
            return $subTotal + ($cartItem->qty * $cartItem->price);
        }, 0);

        return $subTotal;
    }

    /**
     * Cari konten keranjang untuk item keranjang yang cocok dengan penutupan pencarian yang diberikan.
     *
     * @param Closure $search
     * @return Collection
     */
    public function search(Closure $search)
    {
        $content = $this->getContent();

        return $content->filter($search);
    }

    /**
     * Kaitkan item keranjang dengan rowId yang diberikan dengan model yang diberikan.
     *
     * @param string $rowId
     * @param mixed $model
     * @return void
     */
    public function associate($rowId, $model)
    {
        if (is_string($model) && !class_exists($model)) {
            throw new UnknownModelException('The supplied model ' . $model . ' does not exist.');
        }

        $cartItem = $this->get($rowId);

        $cartItem->associate($model);

        $content = $this->getContent();

        $content->put($cartItem->rowId, $cartItem);

        $this->putToSession($content);
    }

    /**
     * Tetapkan tarif pajak untuk item keranjang dengan rowId yang diberikan.
     *
     * @param string $rowId
     * @param int|float $taxRate
     * @return void
     */
    public function setTax($rowId, $taxRate)
    {
        $cartItem = $this->get($rowId);

        $cartItem->setTaxRate($taxRate);

        $cartItem->updated_at = now();

        $content = $this->getContent();

        $content->put($cartItem->rowId, $cartItem);

        $this->putToSession($content);
    }

    /**
     * Simpan contoh keranjang saat ini.
     *
     * @param mixed $identifier
     * @return void
     */
    public function store($identifier)
    {
        $content = $this->getContent();

        if ($this->storedCartWithIdentifierExists($identifier)) {
            throw new CartAlreadyStoredException('A cart with identifier ' . $identifier . ' was already stored.');
        }

        $this->getConnection()->table($this->getTableName())->insert([
            'identifier' => $identifier,
            'instance'   => $this->currentInstance(),
            'content'    => serialize($content),
        ]);

        $this->events->dispatch('cart.stored');
    }

    /**
     * @param string $identifier
     * @return bool
     */
    protected function storedCartWithIdentifierExists($identifier)
    {
        return $this->getConnection()->table($this->getTableName())->where('identifier', $identifier)->exists();
    }

    /**
     * Get koneksi database.
     *
     * @return Connection
     */
    protected function getConnection()
    {
        $connectionName = $this->getConnectionName();

        return app(DatabaseManager::class)->connection($connectionName);
    }

    /**
     * Get nama koneksi database.
     *
     * @return string
     */
    protected function getConnectionName()
    {
        $connection = config('plugins.ecommerce.cart.database.connection');

        return empty($connection) ? config('database.default') : $connection;
    }

    /**
     * Get nama tabel database.
     *
     * @return string
     */
    protected function getTableName()
    {
        return config('plugins.ecommerce.cart.database.table', 'cart');
    }

    /**
     * Get contoh keranjang saat ini.
     *
     * @return string
     */
    public function currentInstance()
    {
        return str_replace('cart.', '', $this->instance);
    }

    /**
     * Kembalikan keranjang dengan pengenal yang diberikan.
     *
     * @param mixed $identifier
     * @return void
     */
    public function restore($identifier)
    {
        if (!$this->storedCartWithIdentifierExists($identifier)) {
            return;
        }

        $stored = $this->getConnection()->table($this->getTableName())
            ->where('identifier', $identifier)->first();

        $storedContent = unserialize($stored->content);

        $currentInstance = $this->currentInstance();

        $this->instance($stored->instance);

        $content = $this->getContent();

        foreach ($storedContent as $cartItem) {
            $content->put($cartItem->rowId, $cartItem);
        }

        $this->events->dispatch('cart.restored');

        $this->putToSession($content);

        $this->instance($currentInstance);

        $this->getConnection()->table($this->getTableName())
            ->where('identifier', $identifier)->delete();
    }

    /**
     * Metode ajaib untuk memungkinkan mengakses properti total, pajak, dan subtotal.
     *
     * @param string $attribute
     * @return float|null
     */
    public function __get($attribute)
    {
        if ($attribute === 'total') {
            return $this->total();
        }

        if ($attribute === 'tax') {
            return $this->tax();
        }

        if ($attribute === 'subtotal') {
            return $this->subtotal();
        }

        return null;
    }

    /**
     * Get harga total barang di keranjang.
     *
     * @return string
     */
    public function total()
    {
        $content = $this->getContent();

        $total = $content->reduce(function ($total, CartItem $cartItem) {
            return $total + ($cartItem->qty * ($cartItem->priceTax == 0 ? $cartItem->price : $cartItem->priceTax));
        }, 0);

        return format_price($total);
    }

    /**
     * Get total pajak barang-barang di troli.
     *
     * @return float
     */
    public function tax()
    {
        if (!EcommerceHelper::isTaxEnabled()) {
            return 0;
        }

        return format_price($this->rawTax());
    }

    /**
     * Get total pajak mentah dari barang-barang di troli.
     *
     * @return float
     */
    public function rawTax()
    {
        if (!EcommerceHelper::isTaxEnabled()) {
            return 0;
        }

        $content = $this->getContent();

        $tax = $content->reduce(function ($tax, CartItem $cartItem) {
            return $tax + ($cartItem->qty * $cartItem->tax);
        }, 0);

        return $tax;
    }

    /**
     * Get subtotal (total - pajak) dari barang-barang di troli.
     *
     * @return float
     */
    public function subtotal()
    {
        $content = $this->getContent();

        $subTotal = $content->reduce(function ($subTotal, CartItem $cartItem) {
            return $subTotal + ($cartItem->qty * $cartItem->price);
        }, 0);

        return format_price($subTotal);
    }

    /**
     * Get semua produk di Keranjang
     *
     * @return Collection
     */
    public function products()
    {
        if ($this->products) {
            return $this->products;
        }

        $cartContent = $this->instance('cart')->content();
        $productIds = $cartContent->pluck('id')->toArray();
        $products = collect([]);
        $weight = 0;
        if ($productIds) {
            $with = [
                'variationInfo',
                'variationInfo.configurableProduct',
                'variationInfo.configurableProduct.slugable',
                'variationProductAttributes',
            ];

            if (is_plugin_active('marketplace')) {
                $with = array_merge($with, [
                    'variationInfo.configurableProduct.store',
                    'variationInfo.configurableProduct.store.slugable',
                ]);
            }

            $products = app(ProductInterface::class)->getProducts([
                'condition' => [
                    ['ec_products.id', 'IN', $productIds],
                    'ec_products.status' => BaseStatusEnum::PUBLISHED,
                ],
                'with'      => $with,
            ]);
        }

        if ($products->count()) {
            foreach ($cartContent as $cartItem) {
                $product = $products->firstWhere('id', $cartItem->id);
                if (!$product) {
                    $this->remove($cartItem->rowId);
                } else {
                    $product->cartItem = $cartItem;
                    $weight += $product->weight * $cartItem->qty;
                }
            }
        }

        $weight = $weight ?: 0.1;

        $this->products = $products;
        $this->weight = $weight;

        return $this->products;
    }

    /**
     * Get isi keranjang.
     *
     * @return Collection
     */
    public function content()
    {
        if (empty($this->session->get($this->instance))) {
            return collect([]);
        }

        return $this->session->get($this->instance);
    }

    /**
     * Get weight
     *
     * @return float
     */
    public function weight()
    {
        return $this->weight ?: 0.1;
    }
}
