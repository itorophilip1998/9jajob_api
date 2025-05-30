<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Boosting extends Model
{
    use HasFactory;
    protected $fillable = [
        'amount',
        'start_date',
        'end_date',
        'status',
        'duration',
        'listing_id'
    ];
}
