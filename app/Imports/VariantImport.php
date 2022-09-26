<?php

namespace App\Imports;

use App\Variant;
use Maatwebsite\Excel\Concerns\ToModel;

class VariantImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
            return new Variant([
                'name' => $row[3],
                'sap_product_code' => $row[1],
                'web_product_code' => $row[2],
                'product_id' => $row[0]
            ]);
        

    }
}
