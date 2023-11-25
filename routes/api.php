<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\API\AmenityController;
use App\Http\Controllers\API\ListingController;
use App\Http\Controllers\API\CategoryController;
use App\Http\Controllers\API\ListingCategoryController;
use App\Http\Controllers\API\ReviewController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\RatingsController;


// authentication
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function ($router) {
    Route::post('register', [AuthController::class, 'register']);
    Route::post('login', [AuthController::class, 'login']);
    Route::post('logout',  [AuthController::class, 'logout'])->middleware("auth:api");
    Route::post('refresh',  [AuthController::class, 'refresh'])->middleware("auth:api");
    Route::get('auth-user',  [AuthController::class, 'authUser'])->middleware("auth:api");
});


// Amenities
Route::get('amenities', [AmenityController::class, 'index']);

// Listing Category
Route::group([
    'middleware' => 'api',
    'prefix' => 'categories'
], function ($router) {
    Route::get('/', [CategoryController::class, 'index']);
    Route::get('/listing', [ListingController::class, 'index']);
    Route::get('/all-listing', [ListingController::class, 'index']);
    Route::get('/my-listing', [ListingController::class, 'myListings'])->middleware("auth:api");
});

// Ratings
Route::group([
    'middleware' => 'api',
    'prefix' => 'reviews'
], function ($router) {
    Route::get('/{id}', [ReviewController::class, 'index']);
    Route::post('/', [ReviewController::class, 'create'])->middleware("auth:api");
    Route::post('/delete/{id}', [ReviewController::class, 'delete'])->middleware("auth:api");
    Route::post('/update/{id}', [ReviewController::class, 'update'])->middleware("auth:api");
});

// Bookings
Route::group([
    'middleware' => 'api',
    'prefix' => 'bookings'
], function ($router) {
    Route::get('/', [BookingController::class, 'index'])->middleware("auth:api");
    Route::post('/', [BookingController::class, 'book'])->middleware("auth:api");

});
