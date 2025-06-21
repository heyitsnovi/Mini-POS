<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\User;
use Silber\Bouncer\Database\Role;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreUsersRequest;
use App\Http\Requests\Admin\UpdateUsersRequest;


class ProductListController extends Controller{
    //

	protected $allowed_user_abilities = ['users_manage','view_product','add_product','deactivate_product','edit_product'];

    public function __construct(){

        $this->middleware('auth');
    }

    public function showProductList(){


         if (! Gate::allows('add_product')) {
            return abort(401);
        }

        $listProducts = DB::table('product_list')
                                     ->join('product_category', 'product_list.category_id', '=', 'product_category.category_id')
                                     ->join('suppliers', 'product_list.product_supplier', '=', 'suppliers.supplier_id','LEFT')
                                    ->orderBy('product_name','DESC')
                                    ->get();
    	
    	return view('productlist.list',
    		[
                'productlist'=>$listProducts,
                'custom_js'=>['product-list.js']
            ]
    	);

    }


    public function showProductListViaJSON(Request $req){

            $search = $req->input('qry');

            $listProducts = DB::table('product_list')
                                     ->join('product_category', 'product_list.category_id', '=', 'product_category.category_id')
                                     ->where('product_name','LIKE',"%{$search}%")
                                    ->orderBy('product_name','DESC')
                                    ->get();

            $json = [];

            foreach($listProducts as $listItems){
                array_push($json, ['icon'=>$listItems->product_image!==null ? $listItems->product_image:'images/no-image.png','id'=>$listItems->product_id,'itemcode'=>$listItems->product_code,'text'=>$listItems->product_name]);
            }
            
            return response()->json(['results'=>$json]);
    }

    public function updateProduct($product_code){

        if (! Gate::allows('edit_product')) {
            return abort(401);
        }

        $generator = new \Picqer\Barcode\BarcodeGeneratorPNG();

        $productInfo = DB::table('product_list')->where('product_code','=',$product_code)->first();

        $suppliers = DB::table('suppliers')->get();

        $listProductsCategory = DB::table('product_category')
                                    ->orderBy('category_id','ASC')
                                    ->get();

                                    
        return view('productlist.update',
            [
                'product_info'=>$productInfo,
                'custom_js'=>['update-product.js'],
                'custom_css'=>['product.css'],
                'suppliers'=>$suppliers,
                'product_categories'=>$listProductsCategory,
                'barcode_string'=>'<img title="product barcode" src="data:image/png;base64,' . base64_encode($generator->getBarcode($product_code, $generator::TYPE_CODE_128)) . '">'
            ]
        );


    }

    public function addProduct(){


         if (! Gate::allows('add_product')) {
            return abort(401);
        }

         $listProductsCategory = DB::table('product_category')
                                    ->orderBy('category_id','ASC')
                                    ->get();
        $suppliers = DB::table('suppliers')->get();

    	return view('productlist.add',
    		[
                  'custom_js'=>['add-product.js'],
                  'custom_css'=>['product.css'],
                  'product_categories'=>$listProductsCategory,
                  'suppliers'=>$suppliers
            ]
        );
    }

}
?>