<?php

namespace App\Imports;

use App\Category;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToModel;

class CategoryImport implements ToModel
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
            return new Category([
                'id' => $row[0],
                'name' => $row[1],
                'meta_description' => $row[2],
                'meta_keywords' => $row[3]
            ]);
        }

    }
    
}
