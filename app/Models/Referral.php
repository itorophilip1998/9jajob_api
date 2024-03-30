<?php

namespace App\Models;

use App\Models\User;
use App\Models\Transactions;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Referral extends Model
{
    use HasFactory;
    protected $fillable=[
        'ref_code',
        'user_id',
        'referrer_id',
        'amount_earn'
    ];
    protected $with=[
        'user',
        'referrer'
        //  'transaction_status'
    ];
    protected $hidden = [
        'amount_earn',
    ];
    public function referrer()
    {
        return $this->belongsTo(User::class, 'referrer_id')->select('id','name','email');
    }
    public function bonus()
    {
        return $this->belongsTo(ReferralBonus::class, 'referral_id')->select('id','name');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->select('id', 'name','email');
    }

}
