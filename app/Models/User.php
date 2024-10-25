<?php

namespace App\Models;

use App\Models\Chats;
use App\Models\Ratings;
use Illuminate\Support\Str;
use App\Models\PackagePurchase;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\Storage;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable implements JWTSubject
{
    use HasApiTokens, HasFactory, Notifiable;


    // ...

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'phone',
        'country',
        'address',
        'state',
        'city',
        'zip',
        'website',
        'facebook',
        'twitter',
        'linkedin',
        'instagram',
        'pinterest',
        'youtube',
        'photo',
        'banner',
        'password',
        'token',
        'status',
        'expo_token',
        'address_longitude',
        'address_latitude',
        'referrer_code'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
        'token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    protected $with = [
        'package'
    ];
    /**
     * The accessors to append to the model's array form.
     *
     * @var array<int, string>
     */
    // protected $appends = ['user_photo'];

    // ...

    /**
     * Get the user's photo attribute.
     *
     * @return string
     */



    /**
     * Transform the model's attributes to an array.
     *
     * @return array<string, mixed>
     */
    public function toArray()
    {
        $attributes = parent::toArray();
        // Add the 'user_photo' attribute to the array
        $url = Storage::disk('do_spaces')->url("/uploads/user_photos" . "/" . $this->photo);
        $attributes['photo'] = $this->photo ?  $url :  null;

        $attributes['ref_code'] = substr(str_replace(' ', '', $this->email), 0, 5) . '-' . $this->id;
        $attributes['listing_creation_amount'] = 1000;
        return $attributes;
    }

    // Rest omitted for brevity

    // ...

    /**
     * Get the identifier that will be stored in the subject claim of the JWT.
     *
     * @return mixed
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }

    public function ratings()
    {
        return $this->hasMany(Ratings::class);
    }
    public function package()
    {
        return $this->hasOne(PackagePurchase::class, 'user_id')->where('currently_active', '1')->orderBy('created_at', 'DESC');
    }

    public function chats()
    {
        return $this->hasOne(Chats::class, 'friend_id')->latest();
    }
}
