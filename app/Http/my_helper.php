<?php


function getSupplierDetails($supplier_id){
	
	if(is_object(\DB::table('suppliers')->where('supplier_id','=',$supplier_id)->first())){
		return \DB::table('suppliers')->where('supplier_id','=',$supplier_id)->first()->supplier_name;
	}else{
		return 'Unspecified';
	}
}