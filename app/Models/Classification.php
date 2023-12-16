<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Classification extends Model
{
    use HasFactory;

    protected $guarded=["id"];

    public function badge()
    {
        return $this->belongsTo(Badge::class,"badge_id");
    }
    public function category()
    {
        return $this->belongsTo(Category::class,"category_id");
    }

    public function users()
    {
        return $this->hasMany(UserClassification::class,"classification_id");
    }
}
