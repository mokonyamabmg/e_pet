<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Variant extends Model
{
    protected $fillable = [
        'id',
        'name',
        'sap_product_code',
        'web_product_code',
        'product_id'
    ];

    public function product()
    {
        return $this->belongsTo('App\Product');
    }
}
