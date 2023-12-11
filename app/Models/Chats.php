<?php

namespace App\Models;

use Illuminate\Support\Facades\URL;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

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
    protected $cast = [
        'photo' => 'array',
    ];

    protected $with = [
        // 'user',
        'friend'
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->without(['package'])->select(['id', 'name', 'email', 'photo']);
    }

    public function friend()
    {
        return $this->belongsTo(User::class, 'friend_id')->without(['package'])->select(['id', 'name', 'email', 'photo']);
    }

    public function toArray()
    {
        $attributes = parent::toArray();

        // Add the 'user_photo' attribute to the array

        $photos = [];
        // dump(json_decode($this->photo));
        foreach (json_decode($this->photo)  as $item) {
            $photos[] =  $item ? URL::to("/uploads/chats") . "/" . $item :  null;
        }
        $attributes['photo'] = $photos;
        return $attributes;
    }
}
