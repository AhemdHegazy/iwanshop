<?php

namespace App\Models;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;

class TranslationExport implements FromCollection, WithMapping, WithHeadings
{
    public function collection()
    {
        return Product::all();
    }

    public function headings(): array
    {
        return [
            'English',
            'Arabic',
        ];
    }

    /**
    * @var Product $product
    */
    public function map($product): array
    {
        $path = resource_path('lang/ar.json');
        if (file_exists($path)) {
            // Read the contents of the file
            $contents = file_get_contents($path);
            $data = json_decode($contents, true);
        }
        $dt=[];
        foreach ($data as $key => $stock) {
            $dt []=[
                $key,
                $stock,
            ];
        }
        return $dt;
    }
}
