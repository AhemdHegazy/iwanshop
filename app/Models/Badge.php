<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Badge extends Model
{
    use HasFactory;
    protected $guarded=["id"];

    public function classifications()
    {
        return $this->hasMany(Classification::class,"badge_id");
    }
}
