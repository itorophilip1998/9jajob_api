<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Ratings extends Model
{
    use HasFactory;
    protected $fillable=[
            'description' ,
            'rate' ,
            'user_id' ,
            'rator_id' ,
    ];
    protected $with=[
            'user' ,

    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function calculateAverageRating()
    {
        $totalRatings = $this->count(); // Total number of ratings
        $sumRatings = $this->sum('rating'); // Sum of all ratings

        if ($totalRatings > 0) {
            return $sumRatings / $totalRatings; // Calculate average rating
        }

        return 0; // Default to 0 if there are no ratings to avoid division by zero
    }

}
