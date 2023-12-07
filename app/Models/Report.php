 <?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    use HasFactory;
    protected $fillable = [
        'listing_id',
        'reporter_id',
        'report',
    ];
    protected $with = [
        'user',
        'report',
    ];
    public function user()
    {
        return $this->hasMany(User::class, 'user_id');
    }
    public function reporter()
    {
        return $this->hasMany(User::class, 'reporter_id');
    }
}
