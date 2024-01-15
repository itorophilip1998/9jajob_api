<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class ListingVideo extends Model
{
    protected $fillable = [
        'listing_id',
        'youtube_video_id',
        'is_mobile_video'
    ];

    public function toArray()
    {
        $attributes = parent::toArray();

        // Add the 'user_photo' attribute to the array
        $url = Storage::disk('do_spaces')->url("/uploads/listing_videos" . "/" . $this->youtube_video_id);
        $embed = "https://www.youtube.com/embed/" . $this->youtube_video_id;


        if ($this->is_mobile_video && $this->youtube_video_id) {
            $attributes['video_url'] = $url;
        } else if ($this->youtube_video_id) {
            $attributes['video_url'] = $embed;
        } else  $attributes['video_url'] = null;


        return $attributes;
    }
}
