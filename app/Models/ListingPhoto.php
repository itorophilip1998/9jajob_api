<?php

namespace App\Models;

use Illuminate\Support\Facades\URL;
use Illuminate\Database\Eloquent\Model;

class ListingPhoto extends Model
{
    protected $fillable = [
        'listing_id',
        'photo'
    ];

    public function toArray()
    {
        $attributes = parent::toArray();

        // Add the 'user_photo' attribute to the array
        $attributes['photo'] =
        $this->photo ? URL::to("/uploads/listing_photos") . "/" . $this->photo :  null;

        return $attributes;
    }

}
