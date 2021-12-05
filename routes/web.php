<?php

use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', 'App\Http\Controllers\TestController@index')->name('home');

Route::get('/login_page', 'App\Http\Controllers\TestController@page_login')->name('get_login');
Route::post('/check_login', 'App\Http\Controllers\TestController@checkLogin')->name('postLogin');
Route::get('/logout', 'App\Http\Controllers\TestController@logout')->name('logout');

Route::get('/dang_ky', 'App\Http\Controllers\TestController@dang_ky');
Route::post('/post_dang_ky', 'App\Http\Controllers\TestController@postDangKy');

Route::get('/product/{id}', 'App\Http\Controllers\TestController@product')->name('viewProduct');
Route::get('/product/{id}/{userId}', 'App\Http\Controllers\TestController@viewProduct')->name('viewProductHasLogin');
Route::get('/product_item/{temp}','App\Http\Controllers\TestController@product_item');
Route::get('/danhmuc/{id}','App\Http\Controllers\TestController@danhmuc')->name('danhmuc');


Route::get('/danhmuc', 'App\Http\Controllers\TestController@danhmuc');

Route::get('/cart', 'App\Http\Controllers\TestController@cart')->name('cart');
Route::get('add-card/{id}', 'App\Http\Controllers\TestController@addCard')->name('addCard');
//Route::post('add-card-qty/{id}', 'App\Http\Controllers\TestController@addCard_qty')->name('addCard_qty');

Route::get('update-cart', 'App\Http\Controllers\TestController@updateCart')->name('getUpdateCart');
Route::get('delete-cart/{id}', 'App\Http\Controllers\TestController@getDeleteCart')->name('getDeleteCart');
Route::get('/detail_cart/{ido}','App\Http\Controllers\TestController@detail_cart');

Route::get('/thanhtoan', 'App\Http\Controllers\TestController@thanhtoan')->name('thanhtoan');
Route::post('/dat-hang', 'App\Http\Controllers\TestController@datHang')->name('datHang');

Route::post('page-vnpay-checkout','App\Http\Controllers\TestController@create')->name('checkout_vnpay');
Route::get('return-page-vnpay-checkout','App\Http\Controllers\TestController@return')->name('return_checkouSt_vnpay');
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('search-product', 'App\Http\Controllers\TestController@searchProduct')->name('searchProduct');

Route::get('/info_user/{adi}','App\Http\Controllers\TestController@info_user');

Route::get('profile/{userId}', 'App\Http\Controllers\TestController@getProfile')->name('getProfile');
Route::put('update-profile/{userId}', 'App\Http\Controllers\TestController@updateProfile')->name('updateProfile');
Route::get('change-password/{userId}', 'App\Http\Controllers\TestController@changePassword')->name('changePassword');
Route::put('update-password/{userId}', 'App\Http\Controllers\TestController@updatePassword')->name('updatePassword');

Route::post('post-rating-star/{userId}/{productId}', 'App\Http\Controllers\TestController@postRatingStar')->name('postRatingStar');

Route::get('/test','App\Http\Controllers\TestController@tests')->name('test');
