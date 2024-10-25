<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ListingSubscription extends Model
{
    use HasFactory;

 protected $fillable = [
        'listing_id',
        'start_date',
        'end_date',
        'amount',
        'status',
    ];
}