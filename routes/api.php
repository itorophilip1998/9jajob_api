<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\API\AmenityController;
use App\Http\Controllers\API\ListingController;
use App\Http\Controllers\API\CategoryController;
use App\Http\Controllers\API\ListingCategoryController;


// authentication
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function ($router) {
    Route::post('register', [AuthController::class,'register']);
    Route::post('login', [AuthController::class,'login']);
    Route::post('logout',  [AuthController::class,'logout'])->middleware("auth:api");
    Route::post('refresh',  [AuthController::class,'refresh'])->middleware("auth:api");
    Route::get('auth-user',  [AuthController::class,'authUser'])->middleware("auth:api");
});


// Amenities
Route::get('amenities', [AmenityController::class, 'index']);

// Listing Category
Route::group([
    'middleware' => 'api',
    'prefix' => 'categories'
], function ($router) {
    Route::get('/', [CategoryController::class, 'index']);
    Route::get('/listing', [ListingCategoryController::class, 'index']);
    Route::get('/all-listings', [ListingController::class, 'index']);
});
