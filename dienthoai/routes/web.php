<?php

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

Route::get('/', function(){
	return redirect ('home');
});

Route::get('home', [
	'as'=>'home-page',
	'uses'=>'HomeController@index'
]);

Route::get('chitiet', [
	'as'=>'chitiet',
	'uses'=>'HomeController@chitiet'
]);

Route::get('catid', [
	'as'=>'catid',
	'uses'=>'HomeController@catid'
]);

Route::get('typeid', [
	'as'=>'typeid',
	'uses'=>'HomeController@typeid'
]);

Route::get('typecamera', [
	'as'=>'typecamera',
	'uses'=>'HomeController@typecamera'
]);

Route::get('lienhe', [
	'as'=>'lienhe',
	'uses'=>'HomeController@lienhe'
]);

Route::get('login', [
	'as'=>'login',
	'uses'=>'HomeController@login'
]);

Route::post('logined', [
	'as'=>'logined',
	'uses'=>'HomeController@logined'
]);

Route::get('shopping_cart', [
	'as'=>'shopping_cart',
	'uses'=>'HomeController@shopping_cart'
]);

Route::get('delete_cart', [
	'as'=>'delete_cart',
	'uses'=>'HomeController@delete_cart'
]);
Route::post('update_cart', [
	'as'=>'update_cart',
	'uses'=>'HomeController@update_cart'
]);
Route::post('buy_cart', [
	'as'=>'buy_cart',
	'uses'=>'HomeController@buy_cart'
]);


Route::post('dathang', [
	'as'=>'dathang',
	'uses'=>'HomeController@dathang'
]);


Route::get('sign', [
	'as'=>'sign',
	'uses'=>'HomeController@sign'
]);

Route::post('signed', [
	'as'=>'signed',
	'uses'=>'HomeController@signed'
]);

Route::get('signout', [
	'as'=>'signout',
	'uses'=>'HomeController@signout'
]);

//Search
Route::get('search', [
	'as'=>'search',
	'uses'=>'HomeController@search'
]);



//ADMIN
Route::get('/admin', [
	'as'=>'main',
	'uses'=>'AdminController@main'
]);
Route::get('deleteUser', [
	'as'=>'deleteUser',
	'uses'=>'AdminController@deleteUser'
]);
Route::get('list_user', [
	'as'=>'list_user',
	'uses'=>'AdminController@list_user'
]);


Route::get('list_product', [
	'as'=>'list_product',
	'uses'=>'AdminController@list_product'
]);
Route::get('deleteProduct', [
	'as'=>'deleteProduct',
	'uses'=>'AdminController@deleteProduct'
]);
Route::get('updateProduct', [
	'as'=>'updateProduct',
	'uses'=>'AdminController@updateProduct'
]);
Route::post('updated', [
	'as'=>'updated',
	'uses'=>'AdminController@updated'
]);

Route::get('add_product', [
	'as'=>'add_product',
	'uses'=>'AdminController@add_product'
]);
Route::post('add_product', [
	'as'=>'added_product',
	'uses'=>'AdminController@added_product'
]);
