<?php
use Illuminate\Support\Facades\File;

function getSupplierDetails($supplier_id){
	
	if(is_object(\DB::table('suppliers')->where('supplier_id','=',$supplier_id)->first())){
		return \DB::table('suppliers')->where('supplier_id','=',$supplier_id)->first()->supplier_name;
	}else{
		return 'Unspecified';
	}
}


function getTransactionTotal($transaction_id){

	$transaction_orders  = \DB::table('order_log')
    ->join('product_list', 'product_list.product_code', '=', 'order_log.product_code')
    ->where('transaction_id', $transaction_id)
    ->get();

    $sum = 0;

    foreach($transaction_orders as $tx_orders){

    		$sum+=($tx_orders->product_price * $tx_orders->product_qty_ordered); 
    }

    return $sum;
}

function getStoreSettings($key){

	$jsonPath = base_path('store-settings.json');

	   if (File::exists($jsonPath)) {
	        $data = json_decode(File::get($jsonPath), true);
	    } else {
	        $data = [
	            'store_name' => '',
	            'contact_number' => '',
	            'address' => ''
	        ];
	    }

	    return $data[$key];
}