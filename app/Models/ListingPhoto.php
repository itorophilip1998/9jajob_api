<?php

namespace App\Models;

use Illuminate\Support\Facades\URL;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class ListingPhoto extends Model
{
    protected $fillable = [
        'listing_id',
        'photo'
    ];

    public function toArray()
    {
        $attributes = parent::toArray();
        $url = Storage::disk('do_spaces')->url("/uploads/listing_photos" . "/" . $this->photo);

        // Add the 'user_photo' attribute to the array
        $attributes['photo'] =
        $this->photo ? $url :  null;

        return $attributes;
    }

}