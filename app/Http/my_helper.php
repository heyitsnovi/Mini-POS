<?php
use Illuminate\Support\Facades\File;

function getSupplierDetails($supplier_id){
	
	if(is_object(\DB::table('suppliers')->where('supplier_id','=',$supplier_id)->first())){
		return \DB::table('suppliers')->where('supplier_id','=',$supplier_id)->first()->supplier_name;
	}else{
		return 'Unspecified';
	}
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