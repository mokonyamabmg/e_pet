<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Auth::routes();

Route::get('/authenticated_user', 'HomeController@authenticated_user');
Route::get('/user_authenticated', 'HomeController@user_authenticated');
Route::get('/edit_profile', 'HomeController@edit_profie')->name('edit_profile');
Route::post('/update_profile', 'HomeController@update_profile')->name('update_profile');
Route::get('/change_password', 'HomeController@change_password')->name('change_password');
Route::post('/update_password', 'HomeController@update_password')->name('update_password');



Route::get('{any?}', function () { 
    return view('dashboard');
})->where('any', '.*')->name('dashboard'); 
