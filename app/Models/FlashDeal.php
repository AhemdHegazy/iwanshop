<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App;

class FlashDeal extends Model
{

    public function flash_deal_products()
    {
        return $this->hasMany(FlashDealProduct::class);
    }

    public function scopeIsActiveAndFeatured($query)
    {
        return $query->where('status', '1')
            ->where('featured', '1');
    }
}
