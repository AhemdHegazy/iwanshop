<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App;

class Brand extends Model
{
    public function brandLogo()
    {
        return $this->belongsTo(Upload::class, 'logo');
    }
}
