<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;

class CategoryController extends Controller{

	public function addProductCategory(Request $req){

 $listProductsCategory = DB::table('product_category')
                                    ->orderBy('category_id','ASC')
                                    ->get();

		return view('productcategory.list',
			['custom_js'=>['product-category.js'],'product_categories'=>$listProductsCategory]
		);
	}

  public function addProductCategoryModal(Request $req){
      return view('productcategory.popup-add');
  }

  public function editProductCategory(Request $req){
    $category = DB::table('product_category')->where('category_id','=',$req->input('_category'))->first();
    return view('productcategory.popup-edit',['category'=>$category]);
  }


	public function saveProductCategory(Request $req){


    	$post_status_container = [];

        $validator = Validator::make($req->all(),[
 
            'category_name'=>'required|min:1|max:255',
            'category_description'=>'required|min:1|max:5000',
        
        ]);

        if($validator->fails()){

            array_push($post_status_container, 
                [
                   'category_name'=>$validator->errors()->first('category_name'),
                   'category_description'=>$validator->errors()->first('category_description'),
                   'has_errors'=>'yes'
                ]);

           echo json_encode($post_status_container);
        }else{

              $add_status = DB::table('product_category')->insert([
                  'category_name'=>$req->input('category_name'),
                  'category_description'=>$req->input('category_description'),
                  'created_at'=>date('Y-m-d h:i:s'),
                  'updated_at'=>date('Y-m-d h:i:s')
              ]);


              if($add_status == 1){

                $req->session()->flash('status', 'Product Category succesfully added');
                array_push($post_status_container, ['has_errors'=>'no']);
                echo json_encode($post_status_container);

              }
        }

	}

  public function saveEditedProductCategory(Request $req){


      $post_status_container = [];

        $validator = Validator::make($req->all(),[
 
            'category_name'=>'required|min:1|max:255',
            'category_description'=>'required|min:1|max:5000',
        
        ]);

        if($validator->fails()){

            array_push($post_status_container, 
                [
                   'category_name'=>$validator->errors()->first('category_name'),
                   'category_description'=>$validator->errors()->first('category_description'),
                   'has_errors'=>'yes'
                ]);

           echo json_encode($post_status_container);
        }else{

                 $update_status = DB::table('product_category')
                ->where('category_id','=',$req->input('_ctid'))
                 ->update([
                  'category_name'=>$req->input('category_name'),
                  'category_description'=>$req->input('category_description'),
                  'updated_at'=>date('Y-m-d h:i:s')
              ]);

                if($update_status == 1){

                $req->session()->flash('status', 'Product Category succesfully updated');
                array_push($post_status_container, ['has_errors'=>'no']);
                echo json_encode($post_status_container);

              }
        }

  }

}?>