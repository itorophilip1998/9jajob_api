<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'message',
        'status',
        'title',
        'booking_id',
    ];
    protected $with = [
        'booking',
    ];

    public function booking()
    {
        return $this->belongsTo(Booking::class,'booking_id');
    }
}