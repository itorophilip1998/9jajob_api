<?php

namespace App\Models;

use App\Models\User;
use App\Models\Listing;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Booking extends Model
{
    use HasFactory;

    protected $fillable = [
        'listing_id',
        'user_id',
        'date',
        'time',
        'status'
    ];
    protected $with = [
        'listings'
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->select(['id', 'name', 'email', 'photo']);
    }

    public function listings()
    {
        return $this->belongsTo(Listing::class, 'listing_id')->withOnly(['verified'])->select(['id', 'listing_name']);
    }


}