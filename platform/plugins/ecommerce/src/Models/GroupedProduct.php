<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Models\BaseModel;

class GroupedProduct extends BaseModel
{
    /**
     * Tabel database yang digunakan oleh model.
     *
     * @var string
     */
    protected $table = 'ec_grouped_products';

    /**
     * @var array
     */
    protected $fillable = [
        'parent_product_id',
        'product_id',
        'fixed_qty',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;
}
