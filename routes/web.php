<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Front\CustomerAuthController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/delete-my-account/{email}', function () {
    $email = request()->email;
    return "$email deleted successfully";
});



Route::get('customer/registration/verify/{token}/{email}', [CustomerAuthController::class, 'registration_verify'])
    ->name('customer_registration_verify');

Route::get('customer/forget-password', [CustomerAuthController::class, 'forget_password'])
    ->name('customer_forget_password');

Route::post('customer/forget-password/store', [CustomerAuthController::class, 'forget_password_store'])
    ->name('customer_forget_password_store');

Route::get('customer/reset-password/{token}/{email}', [CustomerAuthController::class, 'reset_password']);
Route::post('customer/reset-password/update', [CustomerAuthController::class, 'reset_password_update'])
    ->name('customer_reset_password_update');