<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Base\Traits\EnumCastable;

class ProductLabel extends BaseModel
{
    use EnumCastable;

    /**
     * Tabel database yang digunakan oleh model.
     *
     * @var string
     */
    protected $table = 'ec_product_labels';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'color',
        'status',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];
}
