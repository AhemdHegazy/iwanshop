<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App;

class CustomerPackage extends Model
{

    public function customer_package_payments()
    {
        return $this->hasMany(CustomerPackagePayment::class);

    }





}
