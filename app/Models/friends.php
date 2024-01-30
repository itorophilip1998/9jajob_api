<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class friends extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'friend_id',
        'chat_id',
        'status'
    ];
    protected $with = [
        'friend',
        'chat'
    ];
    public function friend()
    {
        return $this->belongsTo(User::class, 'friend_id')->without(['package'])->select(['id', 'name', 'email', 'photo']);
    }
    public function chat()
    {
        return $this->belongsTo(Chats::class, 'chat_id')->without(['friend']);
    }
}