<?php

namespace App\Http\Controllers;


use DB;
use Validator;
use App\Rules\AmountPaidRule;
use App\User;
use Silber\Bouncer\Database\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreUsersRequest;
use App\Http\Requests\Admin\UpdateUsersRequest;

class SalesController extends Controller{
    //

	 public function __construct(){$this->middleware('auth');}

		public function addSalesItem(Request $req){


			$product_code = $req->input('product_code');

			$product = DB::table('product_list')->where('product_code','=',$product_code)->first();

			if(is_object($product)){

 
			 if(\Cart::get($product_code )===null){

			 		if((int)$product->stock_onhand > 0){

					\Cart::add($product->product_code, $product->product_name,$product->product_price,1, []);
					echo json_encode(
						[
							'status'=>1,
							'sales_total'=>number_format(\Cart::getTotal(),2),
							'debug'=>2,
							'p'=>\Cart::get($product_code)->quantity
						]);
				}else{
					echo json_encode(['status'=>2]);
				}

				}else if(\Cart::get($product_code)->quantity<$product->stock_onhand){
					\Cart::add($product->product_code, $product->product_name,$product->product_price,1, []);
					echo json_encode(
						[
							'status'=>1,
							'sales_total'=>number_format(\Cart::getTotal(),2)
						]);

				}else if($product->stock_onhand ===0){

					echo json_encode(['status'=>2]);
				}
				else{

					echo json_encode(['status'=>2]);
				}
				 
			}
		}

		public function showCurrentSales(Request $req){

			$cartCollection = \Cart::getContent();

			$items = $cartCollection->toArray();

			echo json_encode(
				[
				'cart_items'=>$items,
				'total_payable'=>number_format(\Cart::getTotal(),2),
				'coupon_code'=>$req->session()->get('coupon_code')
				]);
		}

		public function clearSales(Request $req){

			$cartCollection = \Cart::getContent();
			$items = $cartCollection->toArray();

			if(is_array($items)){
				\Cart::clear();
				\Cart::clearCartConditions();
				$req->session()->forget('coupon_code');
			}

		}


		public function newSales(){
			
			return view('sales.newsales',['custom_js'=>['sweetalert.min.js','sales.js'],'custom_css'=>['new-sales.css']]);
		}


		public function updateProductQty(Request $req){

	 
			$product_stock = DB::table('product_list')->where('product_code','=',$req->input('_itemcode'))->first()->stock_onhand;

			return view('sales.updateqty',
					['custom_js'=>['sweetalert.min.js','sales.js'],
					'data'=>[$product_stock,$req->input('_itemcode'),\Cart::get($req->input('_itemcode'))->quantity]
				]);
		}

		public function removeCartItem(Request $req){
			\Cart::remove($req->input('cart_item_id'));
		}

		public function submitUpdatedItem(Request $req){
			 
			\Cart::update($req->input('_itemcode'), array(
				  'quantity' => array(
				      'relative' => false,
				      'value' =>  $req->input('_newqty')
				  ),
				));

		}

		public function addCoupon(Request $req){

			return view('sales.addcoupon');
		}

		public function submitCouponCode(Request $req){

			$coupon = $req->input('_coupon');

			$coupon_info = DB::table('coupon_codes')->where('coupon_code',$coupon);

 

			if($coupon_info->count()===1){

				if($coupon_info->first()->minimum_purchase!==''){
					if(\Cart::getTotal() >=$coupon_info->first()->minimum_purchase){

							\Cart::clearCartConditions();
							$req->session()->forget('coupon_code');

							$condition = new \Darryldecode\Cart\CartCondition(array(
								    'name' =>$coupon_info->first()->coupon_code,
								    'type' => 'coupon',
								    'target' => 'total', 
								    'value' => '-'.$coupon_info->first()->coupon_value,
								    'order' => 1
								));
								\Cart::condition($condition);

								$req->session()->put('coupon_code',array(
								    'name' =>$coupon_info->first()->coupon_code,
								    'type' => 'coupon',
								    'target' => 'total', 
								    'value' => '-'.$coupon_info->first()->coupon_value,
								    'order' => 1
								));

						echo json_encode(['coupon_insert_status'=>'Coupon Added','status'=>'1']);
					}else{
						echo json_encode(['coupon_insert_status'=>'Sorry, coupon valid only if your minimum purchase is PHP '.number_format($coupon_info->first()->minimum_purchase,2).' or greater.','status'=>'0']);
					}
				}
				

			}else{

				echo json_encode(['coupon_insert_status'=>'Coupon Code Not Found','status'=>'0']);
			}

		}

		
		public function purgeCoupon(Request $req){
			\Cart::clearCartConditions();
			$req->session()->forget('coupon_code');
		}

		public function payTransaction(Request $req){
				return view('sales.paytransaction',['amount_payable'=>\Cart::getTotal()]);
		}

		public function saveTransaction(Request $req){

    	$post_status_container = [];

        $payment_type = $req->input('transaction_type');

 

    	$rules = [
            'customer_name'=>'required|max:45|min:1',
            'customer_contact'=>'required|min:1|max:255',
            'customer_address'=>'required|min:1|max:200',
            'transaction_type'=>'required',
            'or_number'=>'required',
            'amt_paid'=>$payment_type==='cash' ? new AmountPaidRule():'',
            'transaction_notes'=>'max:1000',
        ];
 
        $validator = Validator::make($req->all(),$rules);

 

        if($validator->fails()){

            array_push($post_status_container, 
                [
		            'customer_name'=>$validator->errors()->first('customer_name'),
		            'customer_contact'=>$validator->errors()->first('customer_contact'),
		            'customer_address'=>$validator->errors()->first('customer_address'),
		            'transaction_type'=>$validator->errors()->first('transaction_type'),
		            'transaction_notes'=>$validator->errors()->first('transaction_notes'),
		            'transaction_notes'=>$validator->errors()->first('transaction_notes'),
		            'amt_paid'=>$validator->errors()->first('amt_paid'),
		            'or_number'=>$validator->errors()->first('or_number'),
                   'has_errors'=>'yes'
                ]);
            	  echo json_encode($post_status_container);
         
        }else{


            	 DB::table('transactions')->insert([
								'transaction_or_number'=>$req->input('or_number'),
								'transaction_date'=>date('Y-m-d'),
								'customer_info'=>$req->input('customer_name'),
								'payment_type'=>$req->input('transaction_type'),
								'contact_number'=>$req->input('customer_contact'),
								'customer_address'=>$req->input('customer_address'),
								'transaction_notes'=>$req->input('transaction_notes'),
								'amount_tendered'=>$req->input('amt_paid'),
								'created_at'=>date('Y-m-d h:i:s'),
								'updated_at'=>date('Y-m-d h:i:s')
							]);
            										

            		$trasaction_save_id = DB::getPdo()->lastInsertId();
        		  
            		$cartCollection = \Cart::getContent();

            		foreach($cartCollection->toArray() as $data){

						$orderlog = DB::table('order_log')
		            		->insert([
		            			'transaction_id'=>$trasaction_save_id,
		            			'product_code'=>$data['id'],
		            			'product_qty_ordered'=>$data['quantity'],
		            			'created_at'=>date('Y-m-d h:i:s'),
		            			'updated_at'=>date('Y-m-d h:i:s')
		            		]);

		                $item_current_stocks = DB::table('product_list')->where('product_code','=',$data['id'])->first();

		                $new_item_stock =DB::table('product_list')->where('product_code','=',$data['id'])
		                								->update([
		                									'stock_onhand'=>($item_current_stocks->stock_onhand - $data['quantity'])
		                									]);
			
				}
		            array_push($post_status_container, 
		                [
				            'customer_name'=>$validator->errors()->first('customer_name'),
				            'customer_contact'=>$validator->errors()->first('customer_contact'),
				            'customer_address'=>$validator->errors()->first('customer_address'),
				            'transaction_type'=>$validator->errors()->first('transaction_type'),
				            'transaction_notes'=>$validator->errors()->first('transaction_notes'),
				            'or_number'=>$validator->errors()->first('or_number'),
				            'amt_paid'=>$validator->errors()->first('amt_paid'),
				            'tx_auto_id'=>$trasaction_save_id,
		                   'has_errors'=>'no'
		                ]);

				if($trasaction_save_id){
					$cartCollection = \Cart::getContent();
					$items = $cartCollection->toArray();

					if(is_array($items)){

						\Cart::clear();
						\Cart::clearCartConditions();
						$req->session()->forget('coupon_code');
					}

        		  echo json_encode($post_status_container);
				}
        	}
		}

	}


?>