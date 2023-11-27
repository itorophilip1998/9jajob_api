<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Verification extends Model
{
    use HasFactory;
    protected $fillable = [
        'listing_id',
        'reg_number',
        'id_card_front',
        'id_card_back',
        'cac_document',
        'skill_certificate',
        'services',
        'status',
    ];
    protected $cast = [
        'services' => 'array',
    ];


}
