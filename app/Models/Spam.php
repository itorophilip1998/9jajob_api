<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Spam extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'friend_id',
        'status',
    ];
    protected $with = [
        // 'user',
        'friend'
    ];
    public function friend()
    {
        return $this->belongsTo(User::class, 'friend_id')->without(['package'])->select(['id', 'name', 'email', 'photo']);
    }

}
