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


Route::any('/admin','Employee@home');


Route::get('/',function() {

try{
   return view('Employee.login');
}
catch(InvalidArgumentException $e)
{
	echo "Your Url is Wrong Invalid Argument Exception";
}


});
Route::post('/details',function() {
return view('Employee.getdetails');
 
 
 });
Route::get('/logout',function() {

	Session::forget('user');
    return redirect('/admin');
 
 });
Route::post('/vehicle','Employee@index');

Route::post('/action','Employee@action');


Route::any('/employee','Employee@store');






Route::get('/home', 'HomeController@index')->name('home');
