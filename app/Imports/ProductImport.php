<?php

namespace App\Imports;

use App\Product;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToModel;

class ProductImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    { 
            
            if(DB::table('products')->where('id', $row[0])->count() == 0)
            {
                return new Product([
                    'id' => $row[0],
                    'name' => $row[1],
                    'slug' => $row[2]
                ]);
            }
        
    }
}
