<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToCollection;

class ProductCategoryImport implements ToCollection
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $rows)
    {
      
        foreach($rows as $row)
        {

                DB::table('product_category')->insert([
                    'category_id' => $row[0],
                    'product_id' => $row[1]
                ]);
        }

    }
}
