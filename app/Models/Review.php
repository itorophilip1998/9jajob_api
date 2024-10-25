<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    protected $fillable = [
        'listing_id',
        'agent_id',
        'agent_type',
        'rating',
        'review',
        'booking_id'
    ];
    protected $with = [
        'user',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'agent_id')->select(['id', 'name', 'email', 'photo']);
    }
}