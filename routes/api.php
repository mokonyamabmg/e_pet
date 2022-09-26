<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/



Route::prefix('products')->group(function() {
    Route::post('importProducts', 'API\ProductController@importProducts');
    Route::get('randomProducts', 'API\ProductController@getRandomProducts');
    Route::get('getProduct/{id}', 'API\ProductController@getProduct');
    Route::post('create', 'API\ProductController@create');
    Route::patch('update/{product_id}', 'API\ProductController@updateProduct');
    Route::delete('delete/{product_id}', 'API\ProductController@deleteProduct');
});

Route::prefix('categories')->group(function() {
    Route::post('importCategories', 'API\CategoryController@importCategory');
    Route::get('getCategories', 'API\CategoryController@getCategories');
    Route::get('getProducts/{category_id}', 'API\CategoryController@getProducts');
    Route::get('getCategory/{category_id}', 'API\CategoryController@getCategory');
    Route::post('create', 'API\CategoryController@create');
    Route::patch('update/{category_id}', 'API\CategoryController@update');
    Route::delete('delete/{category_id}', 'API\CategoryController@delete');

});

Route::prefix('variants')->group(function() {
    Route::post('importVariants', 'API\VariantController@importVariants');
    Route::get('getProductVariants/{product_id}', 'API\VariantController@getProductVariants');
    Route::delete('delete/{variant_id}', 'API\VariantController@delete');
    Route::get('getVariant/{variant_id}', 'API\VariantController@getVariant');
    Route::patch('update/{variant_id}', 'API\VariantController@update');
    Route::post('create', 'API\VariantController@create');
});

Route::post('importProductCategories', 'API\ProductController@importProductCategory');

