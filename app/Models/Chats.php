<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chats extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'friend_id',
        'message',
        'photo',
        'status',
    ];

    protected $with = [
        // 'user',
        'friend'
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->without(['package'])->select(['id','name','email','photo']);
    }

    public function friend()
    {
        return $this->belongsTo(User::class, 'friend_id')->without(['package'])->select(['id','name','email','photo']) ;
    }
}
