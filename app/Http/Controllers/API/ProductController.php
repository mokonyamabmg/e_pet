<?php

namespace App\Http\Controllers\API;

use App\Category;
use App\Http\Controllers\Controller;
use App\Imports\ProductCategoryImport;
use App\Imports\ProductImport;
use App\Product;
use App\Variant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Excel;

class ProductController extends Controller
{
    public function importProducts(Request $request) {
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
       
       
       Excel::import(new ProductImport, $request->file);
       
       return response()->json(['message' => 'success'],200);
       
   }

   public function importProductCategory(Request $request) {
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
   
   
   Excel::import(new ProductCategoryImport, $request->file);
   
   return response()->json(['message' => 'success'],200);
   
}

public function getRandomProducts() {
    
    $products = Product::all()->random(6);

    
    return response()->json(['products' => $products], 201);
}

public function getProduct($id) {

    $product = Product::find($id);

    $product->categories = $product->categories;

    return response()->json(['product' => $product],201);
}

public function create(Request $request) {

    $name = $request->name;
    $slug = str_replace(' ', '-', strtolower($name));

    $product = new Product;
    $product->name = $name;
    $product->slug = $slug;
    $product->save();

    $variant = new Variant;
    $variant->name = $product->name;
    $variant->product_id = $product->id;
    $variant->save();

    $product->categories()->attach($request->categories);

    return response()->json(['status' => 'success', 'product' => $product], 201);
}

public function updateProduct(Request $request, $product_id)
{

    $name = $request->name;
    $slug = str_replace(' ', '-', strtolower($name));

    
    $product = Product::find($product_id);

    $old_variant_name = $product->name;

    $product->name = $name;
    $product->slug = $slug;
    $product->save();

    $variants = Variant::where('product_id', $product->id)->get();

    $variants = $variants->map(function($variant) use($old_variant_name, $name) {
        $variant_name = str_replace($old_variant_name, $name, $variant->name);

        $variant_obj = Variant::find($variant->id);

        $variant_obj->name = $variant_name;

        $variant_obj->save();

        return $variant_obj;
    });

    $product->categories()->sync($request->categories);

    return response()->json(['status' => 'success', 'product' => $product], 201);
}

public function deleteProduct($product_id)
{
    $product = Product::find($product_id);

    $product->delete();

    return response()->json(['status' => 'success'], 201);

}

}
