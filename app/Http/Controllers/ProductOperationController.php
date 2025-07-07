<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use DB;
use Session;

class ProductOperationController extends Controller{
    //

      public function __construct(){

        $this->middleware('auth');
    }


    public function ajaxProductList(Request $req){


      $start = $req->input('start') ?? 0;
      $length = $req->input('length') ?? 10;
      $search = $req->input('search')['value'] ?? '';
      $orderColumn = $req->input('order')[0]['column'] ?? 0;
      $orderDir = $req->input('order')[0]['dir'] ?? 'desc';

      $columns = ['product_name', 'category_name', 'supplier_name', 'product_price'];

      $query = DB::table('product_list')
          ->join('product_category', 'product_list.category_id', '=', 'product_category.category_id')
          ->leftJoin('suppliers', 'product_list.product_supplier', '=', 'suppliers.supplier_id')
          ->select(
              'product_list.*',
              'product_category.category_name',
              'suppliers.supplier_name'
          );


      if (!empty($search)) {
          $query->where(function ($q) use ($search) {
              $q->where('product_list.product_name', 'LIKE', "%{$search}%")
                ->orWhere('product_category.category_name', 'LIKE', "%{$search}%")
                ->orWhere('suppliers.supplier_name', 'LIKE', "%{$search}%");
          });
      }


      if (!empty($orderColumn) && isset($columns[$orderColumn])) {
          $query->orderBy($columns[$orderColumn], $orderDir);
      }


      $totalRecords = DB::table('product_list')->count();
      $filteredRecords = $query->count();


      $products = $query->skip($start)->take($length)->get();

      $data = [];
      foreach ($products as $product) {
          $data[] = [
              'product_code' => $product->product_code,
              'product_name' => $product->product_name,
              'stock'=>$product->stock_onhand,
              'product_price' => $product->product_price,
              'supplier' => $product->supplier_name,
              'product_category' => $product->category_name,
              'product_status' => $product->stock_onhand,
              'restock'=>$product->restock_count,
               'product_wholesale_price' => $product->wholesale_price,
              'actions' => '<div class="dropdown">
                                                      <button class="btn btn-sm btn-default dropdown-toggle" type="button" data-toggle="dropdown">Options
                                                      <span class="caret"></span></button>
                                                      <ul class="dropdown-menu">
                                                        <li><a href="/admin/product/update/'.$product->product_code.'">Update</a></li>
                                                      </ul>
                                                </div> '
          ];
      }

 
      return response()->json([
          'draw' => $req->input('draw'),
          'recordsTotal' => $totalRecords,
          'recordsFiltered' => $filteredRecords,
          'data' => $data,
      ]);


    }


    public function saveProduct(Request $req){

    	$post_status_container = [];

        $validator = Validator::make($req->all(),[
            'product_barcode'=>'required|max:45|min:1|unique:product_list,product_code',
            'product_name'=>'required|min:1|max:255',
            'product_description'=>'max:5000',
            'product_price'=>'required|regex:/^\d+(\.\d{1,2})?$/',
            'product_wholesale_price'=>'required|regex:/^\d+(\.\d{1,2})?$/',
            'product_category'=>'required|min:1|max:10',
            'product_status'=>'required|min:1',
            'product_restock'=>'required|min:1|integer',
            'product_qty'=>'required|integer'
        ]);

        if($validator->fails()){

            array_push($post_status_container, 
                [
                   'product_barcode'=>$validator->errors()->first('product_barcode'),
                   'product_name'=>$validator->errors()->first('product_name'),
                   'product_description'=>$validator->errors()->first('product_description'),
                   'product_price'=>$validator->errors()->first('product_price'),
                   'product_category'=>$validator->errors()->first('product_category'),
                   'product_status'=>$validator->errors()->first('product_status'),
                   'product_restock'=>$validator->errors()->first('product_restock'),
                   'product_qty'=>$validator->errors()->first('product_qty'),
                   'wholesale_price'=>$validator->errors()->first('product_wholesale_price'),
                   'has_errors'=>'yes'
                ]);

           echo json_encode($post_status_container);
        }else{

              $add_status = DB::table('product_list')->insert([
                  'product_name'=>$req->input('product_name'),
                  'category_id'=>$req->input('product_category'),
                  'product_status'=>$req->input('product_status'),
                  'product_description'=>$req->input('product_description'),
                  'product_code'=>$req->input('product_barcode'),
                  'product_price'=>$req->input('product_price'),
                  'stock_onhand'=>$req->input('product_qty'),
                  'restock_count'=>$req->input('product_restock'),
                  'wholesale_price'=>$req->input('product_wholesale_price'),
                  'created_at'=>date('Y-m-d h:i:s'),
                  'product_image'=>'images/'.$req->input('_uploaded_img'),
                  'product_supplier'=>$req->input('product_supplier'),
                  'updated_at'=>date('Y-m-d h:i:s')
              ]);


              if($add_status == 1){

                $req->session()->flash('status', 'Product succesfully added');
                array_push($post_status_container, ['has_errors'=>'no']);
                echo json_encode($post_status_container);

              }
        }

    }

    public function saveUpdatedProduct(Request $req){

      $post_status_container = [];

        $validator = Validator::make($req->all(),[
            'product_barcode'=>'required|max:45|min:1',
            'product_name'=>'required|min:1|max:255',
            'product_description'=>'max:5000',
            'product_price'=>'required|regex:/^\d+(\.\d{1,2})?$/',
            'product_wholesale_price'=>'required|regex:/^\d+(\.\d{1,2})?$/',
            'product_category'=>'required|min:1|max:10',
            'product_status'=>'required|min:1',
            'product_restock'=>'required|min:1|integer',
            'product_qty'=>'required|integer'
        ]);

        if($validator->fails()){

            array_push($post_status_container, 
                [
                   'product_barcode'=>$validator->errors()->first('product_barcode'),
                   'product_name'=>$validator->errors()->first('product_name'),
                   'product_description'=>$validator->errors()->first('product_description'),
                   'product_price'=>$validator->errors()->first('product_price'),
                   'product_category'=>$validator->errors()->first('product_category'),
                   'product_status'=>$validator->errors()->first('product_status'),
                   'product_restock'=>$validator->errors()->first('product_restock'),
                   'product_qty'=>$validator->errors()->first('product_qty'),
                   'wholesale_price'=>$validator->errors()->first('product_wholesale_price'),
                   'has_errors'=>'yes'
                ]);

           echo json_encode($post_status_container);
           
        }else{

               $product_img_path =  '';

               $str = preg_replace('/(images\/)+/', 'images/', $req->input('_uploaded_img'));

                if (strpos($str, 'images/') !== 0) {
                    $product_img_path = 'images/' . $str;
                }else{
                    $product_img_path = $str;
                }


              $update_status = DB::table('product_list')
                ->where('product_code','=',$req->input('_itemcode'))
                ->update([
                    'product_name'=>$req->input('product_name'),
                    'category_id'=>$req->input('product_category'),
                    'product_status'=>$req->input('product_status'),
                    'product_description'=>$req->input('product_description'),
                    'product_code'=>$req->input('product_barcode'),
                    'product_price'=>$req->input('product_price'),
                    'stock_onhand'=>$req->input('product_qty'),
                    'restock_count'=>$req->input('product_restock'),
                    'wholesale_price'=>$req->input('product_wholesale_price'),
                    'product_supplier'=>$req->input('product_supplier'),
                     'product_image'=>$product_img_path,
                    'updated_at'=>date('Y-m-d h:i:s'),
              ]);


              if(is_int($update_status)){

                array_push($post_status_container, ['has_errors'=>'no']);
                $req->session()->flash('status', 'Product succesfully updated');
                echo json_encode($post_status_container);

              }
        }

    }

    public function searchProductBarcode(Request $req){

          $search = $req->input('query');

          $data = DB::table('product_list')->where('product_code','LIKE',"%{$search}%")->get();

          $list = [];

          foreach($data as $item){
            $list[]=$item->product_code;
          }
                    
            echo json_encode($list);
    }

    public function uploadProductImage(Request $req){

            $product_image = bin2hex(openssl_random_pseudo_bytes(12)).'.'.$req->file->getClientOriginalExtension();
            
            $upload_status = $req->file->move(public_path().'/images/', $product_image);

            if(file_exists('images/'.$product_image)){
              echo json_encode(['image_file'=>$product_image]);
            }else{
              echo json_encode(['image_file'=>'no-image.png']);
            }

    }

}
?>