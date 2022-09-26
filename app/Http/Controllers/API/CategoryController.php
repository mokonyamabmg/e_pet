<?php

namespace App\Http\Controllers\API;

use App\Category;
use App\Http\Controllers\Controller;
use App\Imports\CategoryImport;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Excel;

class CategoryController extends Controller
{
    public function importCategory(Request $request) {
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
       
       
       Excel::import(new CategoryImport, $request->file);
       
       return response()->json(['message' => 'success'],200);
       
   }

   public function getCategories() {
       
        $categories = Category::orderBy('created_at', 'desc')->get();

        return response()->json(['categories' => $categories], 201);
   }

   public function getProducts($id){

        $category_products = Category::find($id)->products;

        return response()->json(['products' => $category_products], 201);
   }

   public function getCategory($id) {
        $category = Category::find($id);

       return response()->json(['category' => $category], 201);
   }

   public function create(Request $request) {

    $category_name = $request->name;
    $meta_description = $request->meta_description;
    $meta_keywords = $request->meta_keywords;

    $category = new Category;
    $category->name = $category_name;
    $category->meta_description = $meta_description;
    $category->meta_keywords = $meta_keywords;

    $category->save();

    return response()->json(['status' => 'success'], 201);


   }

   public function update(Request $request, $category_id)
   {
    $category_name = $request->name;
    $meta_description = $request->meta_description;
    $meta_keywords = $request->meta_keywords;

    $category = Category::find($category_id);
    $category->name = $category_name;
    $category->meta_description = $meta_description;
    $category->meta_keywords = $meta_keywords;

    $category->save();

    return response()->json(['status' => 'success'], 201);
   }

   public function delete($id) {

    $category = Category::find($id);

    $category->delete();

    return response()->json(['status' => 'success'], 201);
   }
}
