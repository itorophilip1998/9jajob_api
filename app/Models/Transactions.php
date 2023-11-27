<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transactions extends Model
{
    use HasFactory;

     protected $fillable = [
        'user_id',
        'type',
        'status',//debit, credit
        'ref_number',
        'trans_id',
        'amount',
        'description',
        'purpose', //verification ,packages, top-up, withdrawal,referrals, boost
        'listing_id',
        'package_id',
        'referral_code'
     ];
    public function package()
    {
        return $this->belongsTo(Package::class, 'package_id');
    }
    public function listing()
    {
        return $this->belongsTo(Listing::class, 'package_id')->select(['id','listing_name']);
    }
}
