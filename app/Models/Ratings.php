<?php

namespace App\Models;

use App\Models\User;
use App\Models\Listing;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Ratings extends Model
{
    use HasFactory;
    protected $fillable = [
        'description',
        'rate',
        'user_id',
        'rator_id',
    ];
    protected $with = [
        'user',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->select(['id', 'name', 'email', 'photo']);
    }
}
