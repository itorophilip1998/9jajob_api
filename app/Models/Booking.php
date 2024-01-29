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
        'status',
        'location'

    ];
    protected $with = [
        'listings',
        'user'
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->select(['id', 'name', 'email', 'photo', 'phone'])->without("package");
    }

    public function listings()
    {
        return $this->belongsTo(Listing::class, 'listing_id')->withOnly(['verified', 'user'])
            ->select(['id', 'listing_name', 'listing_address', 'listing_phone', 'user_id']);
    }
}
