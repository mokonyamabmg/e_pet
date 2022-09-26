<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'id',
        'name',
        'slug'
    ];


    public function categories() {
        return $this->belongsToMany('App\Category', 'product_category');
    }

    public function variants() {
        return $this->hasMany('App\Variant');
    }
}
