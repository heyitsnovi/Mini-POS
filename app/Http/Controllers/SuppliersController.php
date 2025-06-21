<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use DB;
use Validator;
use App\User;
use Silber\Bouncer\Database\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreUsersRequest;
use App\Http\Requests\Admin\UpdateUsersRequest;

class SuppliersController extends Controller
{
 
    public function __construct()
    {
        $this->middleware('auth');
    }
 
    public function index(){

         if (! Gate::allows('users_manage')) {
            return abort(401);
        }
        $suppliers = DB::table('suppliers')->get();
        return view('suppliers.supplierslist',['suppliers'=>$suppliers,'custom_js'=>['suppliers.js']]);
    }

    public function updateSupplier($supplier_id){
         if (! Gate::allows('users_manage')) {
            return abort(401);
        }
        $supplier_info = DB::table('suppliers')->where('supplier_id','=',$supplier_id)->first();
        return view('suppliers.editsuppliers',['supplier_info'=>$supplier_info]);

    }

    public function newSupplier(){
         if (! Gate::allows('users_manage')) {
            return abort(401);
        }
        return view('suppliers.addsuplier');
    }

    public function saveNewSupplier(Request $req){

        if (! Gate::allows('users_manage')) {
            return abort(401);
        }
        $validator = Validator::make($req->all(),[
            'supplier_name'=>'required|min:1|max:100|unique:suppliers,supplier_name'
        ]);

         if($validator->fails()){
            
             return redirect('admin/product/add-supplier')->withErrors($validator);

         }else{

            $add = DB::table('suppliers')
                            ->insert([
                                'supplier_name'=>$req->input('supplier_name'),
                                'supplier_address'=>$req->input('supplier_address'),
                                'supplier_contact'=>$req->input('supplier_contact'),
                                'supplier_email'=>$req->input('supplier_email'),
                                'updated_at'=>date('Y-m-d h:i:s'),
                                'created_at'=>date('Y-m-d h:i:s'),
                            ]);
                            
            if($add ===true){
                  $req->session()->flash('status', 'Supplier Info succesfully added');
                   return redirect('/admin/product/suppliers');
            }
         }

    }

    public function saveEditedSupplier(Request $req){

      if (! Gate::allows('users_manage')) {
            return abort(401);
        }

        $validator = Validator::make($req->all(),[
            'supplier_name'=>'required|min:1|max:100'
        ]);

         if($validator->fails()){
            
             return redirect('admin/product/suppliers/edit/'.$req->input('_supplier_id'))->withErrors($validator);

         }else{

            $update = DB::table('suppliers')->where('supplier_id','=',$req->input('_supplier_id'))
                            ->update([
                                'supplier_name'=>$req->input('supplier_name'),
                                'supplier_address'=>$req->input('supplier_address'),
                                'supplier_contact'=>$req->input('supplier_contact'),
                                'supplier_email'=>$req->input('supplier_email'),
                                'updated_at'=>date('Y-m-d h:i:s'),
                            ]);

            if($update ===1){
                  $req->session()->flash('status', 'Supplier Info succesfully updated');
                   return redirect('/admin/product/suppliers');
            }
         }

    }

    public function viewSupplier($supplier_id){
      $supplier_info = DB::table('suppliers')->where('supplier_id','=',$supplier_id)->first();
      $supplies_purcahsed = DB::table('product_list')->where('product_supplier','=',$supplier_id)->get();
      return view('suppliers.suppliers_purchases',['supplier_info'=>$supplier_info,'supplies_purcahsed'=>$supplies_purcahsed,
        'custom_js'=>['supplier_info.js']
      ]);
    }
}
?>