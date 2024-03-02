<?php

use Illuminate\Http\Request;
use App\Models\ListingCategory;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SpamController;
use App\Http\Controllers\ChatsController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\RatingsController;
use App\Http\Controllers\BoostingController;
use App\Http\Controllers\ReferralController;
use App\Http\Controllers\API\ReviewController;
use App\Http\Controllers\API\AmenityController;
use App\Http\Controllers\API\ListingController;
use App\Http\Controllers\API\PackageController;
use App\Http\Controllers\API\CategoryController;
use App\Http\Controllers\DynamicFormsController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\TransactionsController;
use App\Http\Controllers\VerificationController;
use App\Http\Controllers\Front\ContactController;
use App\Http\Controllers\API\ListingCategoryController;

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
    Route::post('edit-user',  [AuthController::class, 'editUser'])->middleware("auth:api");
    Route::post('forgot-password',  [AuthController::class, 'forgotPassword']);
    Route::post('reset-password',  [AuthController::class, 'resetPassword']);
    Route::post('de-activate-account',  [AuthController::class, 'statusCheck']);
});

// Amenities
Route::get('amenities', [AmenityController::class, 'index']);
// Dynamic Forms
Route::get('dynamic-forms', [DynamicFormsController::class, 'index']);

// Listing Category
Route::group([
    'middleware' => 'api',
    'prefix' => 'categories'
], function ($router) {
    Route::get('/', [CategoryController::class, 'index']);
    Route::get('/listing', [ListingCategoryController::class, 'index']);
    Route::get('/all-listing', [ListingController::class, 'index']);
    Route::get('/my-listing', [ListingController::class, 'myListings'])->middleware("auth:api");
    Route::post('/my-listing', [ListingController::class, 'myListings'])->middleware("auth:api");
});

Route::post('/add-listings', [ListingController::class, 'AddListings'])->middleware("auth:api");
Route::post('/renew-listings', [ListingController::class, 'renewListing'])->middleware("auth:api");
Route::post('/update-listings/{id}', [ListingController::class, 'update'])->middleware("auth:api");
Route::delete('/delete-listings/{id}', [ListingController::class, 'destroy'])->middleware("auth:api");

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
    Route::post('/update-status', [BookingController::class, 'updateStatus'])->middleware("auth:api");
});

// Verification
Route::group([
    'middleware' => 'api',
    'prefix' => 'verification'
], function ($router) {
    Route::post('/', [VerificationController::class, 'create'])->middleware("auth:api");
    Route::get('/', [VerificationController::class, 'listOfVerifications'])->middleware("auth:api");
    Route::post('/{id}', [VerificationController::class, 'updateVerifications'])->middleware("auth:api");
});

// transaction
Route::group([
    'middleware' => 'api',
    'prefix' => 'transaction'
], function ($router) {
    Route::post('/initiate', [TransactionsController::class, 'initiateTransaction'])->middleware("auth:api");
    Route::get('/', [TransactionsController::class, 'getAll'])->middleware("auth:api");
});
// Report
Route::group([
    'middleware' => 'api',
    'prefix' => 'report'
], function ($router) {
    Route::post('/', [ReportController::class, 'create'])->middleware("auth:api");
});

// Package
Route::group([
    'middleware' => 'api',
    'prefix' => 'package'
], function ($router) {
    Route::get('/', [PackageController::class, 'index'])->middleware("auth:api");
    Route::post('/purchase', [PackageController::class, 'purchase'])->middleware("auth:api");
    Route::post('/update-package', [PackageController::class, 'updatePackage'])->middleware("auth:api");
});

// Referrals
Route::group([
    'middleware' => 'api',
    'prefix' => 'referrals'
], function ($router) {
    Route::get('/', [ReferralController::class, 'index'])->middleware("auth:api");
});
// Boosting
Route::group([
    'middleware' => 'api',
    'prefix' => 'boosting'
], function ($router) {
    Route::post('/', [BoostingController::class, 'create'])->middleware("auth:api");
});
// chats
Route::group([
    'middleware' => 'api',
    'prefix' => 'chats'
], function ($router) {
    Route::post('/', [ChatsController::class, 'create'])->middleware("auth:api");
    Route::get('/{friend_id}', [ChatsController::class, 'index'])->middleware("auth:api");
});
Route::get('/friends', [ChatsController::class, 'userChats'])->middleware("auth:api");
Route::get('/users', [ChatsController::class, 'allUsers'])->middleware("auth:api");
Route::post('/unread-chats', [ChatsController::class, 'updateStatus'])->middleware("auth:api");

// Notifications
Route::group([
    'middleware' => 'api',
    'prefix' => 'notification'
], function ($router) {
    Route::get('/', [NotificationController::class, 'index'])->middleware("auth:api");
    Route::get('/counts', [NotificationController::class, 'counts'])->middleware("auth:api");
    Route::post('/read-all', [NotificationController::class, 'readNotifications'])->middleware("auth:api");
});

// Spam
Route::group([
    'middleware' => 'api',
    'prefix' => 'spam'
], function ($router) {
    Route::get('/', [SpamController::class, 'index'])->middleware("auth:api");
    Route::post('/', [SpamController::class, 'create'])->middleware("auth:api");
});

// Spam
Route::group([
    'middleware' => 'api',
    'prefix' => 'contact-us'
], function ($router) {
    Route::post('/', [ContactController::class, 'send_email']);
});
