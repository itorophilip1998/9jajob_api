<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReferralBonus extends Model
{
    use HasFactory;
    protected $fillable = [
        "user_id",
        'referrer_id',
        'amount_earn',
        'description',
        'referral_id'
    ];
}
