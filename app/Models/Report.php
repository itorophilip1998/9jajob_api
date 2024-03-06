 <?php
namespace App\Models;


    use App\Models\User;
    use Illuminate\Database\Eloquent\Model;
    use Illuminate\Database\Eloquent\Factories\HasFactory;

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