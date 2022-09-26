<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Imports\VariantImport;
use App\Product;
use App\Variant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Excel;

class VariantController extends Controller
{
    public function importVariants(Request $request) {
        $data = $request->only('file');

       $validator = Validator::make($data, [
           'file' => 'required'
       ]);
       
       if ($validator->fails()) {
           return response()->json(['error' => $validator->messages()], 400);
       }
       
       if(!$request->file)
       {
           return response()->json([
               'success' => false,
               'message' => 'File not uploaded'
           ], 400);
       }
       
       
       Excel::import(new VariantImport, $request->file);
       
       return response()->json(['message' => 'success'],200);
       
   }

   public function getProductVariants($product_id) {

        $variants = Variant::where('product_id', $product_id)->orderBy('created_at', 'desc')->get();

        return response()->json(['variants' => $variants], 201);
   }

   public function delete($id) {
        $variant = Variant::find($id);

        $variant->delete();

        return response()->json(['status' => 'success'], 201);
   }

   public function update(Request $request, $id) {

        $variant = Variant::find($id);

        $variant->name = $request->name;
        $variant->sap_product_code = $request->sap_product_code;
        $variant->web_product_code = $request->web_product_code;

        $variant->save();


        return response()->json(['status' => 'success', 'variant' => $variant], 201);

   }

   public function getVariant($variant_id) {

        $variant = Variant::find($variant_id);

        $product = Product::find($variant->product_id);

        $variant->product = $product;

        return response()->json(['variant' => $variant], 201);

   }

   public function create(Request $request) {

        $product = Product::find($request->product_id);

        $variant = new Variant;

        $variant->name = $product->name .' '.$request->variant_name;
        $variant->sap_product_code = $request->sap_product_code;
        $variant->web_product_code = $request->web_product_code;
        $variant->product_id = $request->product_id;

        $variant->save();

        return response()->json(['status' => 'success'], 201);

   }
}
