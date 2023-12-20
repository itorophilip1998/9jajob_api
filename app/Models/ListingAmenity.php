<?php

namespace App\Models;

use App\Models\Amenity;
use Illuminate\Database\Eloquent\Model;

class ListingAmenity extends Model
{
    protected $fillable = [
        'listing_id',
        'amenity_id'
    ];
    protected $with = ['amenity_details'];

    public function amenity_details()
    {
        return $this->belongsTo(Amenity::class, 'amenity_id');
    }
}
