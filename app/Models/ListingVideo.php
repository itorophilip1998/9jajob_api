<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ListingVideo extends Model
{
    protected $fillable = [
        'listing_id',
        'youtube_video_id'
    ];

    public function toArray()
    {
        $attributes = parent::toArray();

        // Add the 'user_photo' attribute to the array
        $attributes['video_url'] =
        $this->youtube_video_id ? "https://www.youtube.com/embed/" . $this->youtube_video_id :  null;

        return $attributes;
    }

}
