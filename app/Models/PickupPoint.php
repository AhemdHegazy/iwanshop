<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App;

class PickupPoint extends Model
{
    public function staff(){
    	return $this->belongsTo(Staff::class);
    }

    public function scopeIsActive($query)
    {
        return $query->where('pick_up_status', '1');
    }
}
