<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App;

class Role extends Model
{
    public function role_translations(){
      return $this->hasMany(RoleTranslation::class);
    }
}
