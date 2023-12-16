<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App;

class SellerPackage extends Model
{
    protected $guarded = [];
    public function shop()
    {
        return $this->hasOne(Shop::class);
    }

}
