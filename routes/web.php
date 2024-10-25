<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Front\CustomerAuthController;
use App\Models\User;
use Illuminate\Http\Request;

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

Route::get('delete-account', function () {
    return view("front.deleteAccount");
});

Route::post('delete-account', function (Request $request) {


    // Find the user by email and soft delete
    try {
        $user = User::where('email', $request->email);


        if ($user?->first()) {
            // $user->delete(); // Soft delete the user
            return redirect()->back()->withErrors(['email' => 'User not found.']);

        }

        return redirect()->back()->withErrors(['email' => 'User not found.']);

    } catch (\Throwable $th) {
        return redirect()->back()->withErrors(['email' => 'User not found.']);

    }
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