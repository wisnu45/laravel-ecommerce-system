<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Models\BaseModel;

class FlashSaleTranslation extends BaseModel
{

    /**
     * Tabel database yang digunakan oleh model.
     *
     * @var string
     */
    protected $table = 'ec_flash_sales_translations';

    /**
     * @var array
     */
    protected $fillable = [
        'lang_code',
        'ec_flash_sales_id',
        'name',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;
}
