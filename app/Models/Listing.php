<?php

namespace App\Models;

use App\Models\User;
use App\Models\Ratings;
use App\Models\ListingCategory;
use App\Models\ListingLocation;
use Illuminate\Auth\Events\Verified;
use Illuminate\Support\Facades\URL;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Listing extends Model
{
    // use SoftDeletes;
    protected $fillable = [
        'listing_name',
        'listing_slug',
        'listing_description',
        'listing_address',
        'address_longitude',
        'address_latitude',
        'listing_phone',
        'listing_email',
        'listing_website',
        'listing_map',
        'listing_oh_monday',
        'listing_oh_tuesday',
        'listing_oh_wednesday',
        'listing_oh_thursday',
        'listing_oh_friday',
        'listing_oh_saturday',
        'listing_oh_sunday',
        'listing_featured_photo',
        'listing_category_id',
        'listing_location_id',
        'user_id',
        'admin_id',
        'user_type',
        'seo_title',
        'seo_meta_description',
        'listing_status',
        'is_featured',
    ];
    protected $with = [
        'rListingCategory',
        'rListingLocation', 'user',
        'amenities',
        'listingAdditionalFeatures',
        'listingSocialItem',
        'listingsPhotos',
        'listingsVideos',
        'verified',
        'boosting',
    ];

    public function toArray()
    {
        $attributes = parent::toArray();
        // Add the 'user_photo' attribute to the array
        $attributes['listing_featured_photo'] =  URL::to("/uploads/listing_featured_photos") . "/" . $this->listing_featured_photo;
        $ratings = $this->reviews->pluck('rating')->toArray();
        $count = count($ratings);
        $sum = array_sum($ratings);

        $attributes['rate_star'] = ($count !== 0) ? min(5, round($sum / $count, 2)) : 0;
        return $attributes;
    }
    public function rListingCategory()
    {
        return $this->belongsTo(ListingCategory::class, 'listing_category_id');
    }

    public function rListingLocation()
    {
        return $this->belongsTo(ListingLocation::class, 'listing_location_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->select(['id', 'name', 'email', 'photo']);
    }

    public function amenities()
    {
        return $this->hasMany(Amenity::class, 'id');
    }

    public function reviews()
    {
        return $this->hasMany(Review::class, 'id');
    }

    public function listingsVideos()
    {
        return $this->hasMany(ListingVideo::class, 'id');
    }
    public function listingsPhotos()
    {
        return $this->hasMany(ListingPhoto::class, 'id');
    }
    public function listingSocialItem()
    {
        return $this->hasMany(ListingSocialItem::class, 'id');
    }
    public function listingAdditionalFeatures()
    {
        return $this->hasMany(ListingAdditionalFeature::class, 'id');
    }

    public function boosting()
    {
        return $this->hasOne(Boosting::class, 'listing_id')->select('id', 'status', 'listing_id');
    }
    public function verified()
    {
        return $this->hasOne(Verification::class, 'listing_id')->select('id', 'status', 'listing_id');
    }
}
