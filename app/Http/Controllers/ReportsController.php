<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;


class ReportsController extends Controller{

	public function salesReport(Request $req){

		//set defaults

		$from = date('Y-m-d');
		$to =  	date('Y-m-d');

		$today_sales =  DB::table('transactions')
								    ->join('order_log', 'order_log.transaction_id', '=', 'transactions.transaction_log_id')
								    ->join('product_list', 'product_list.product_code', '=', 'order_log.product_code')
								->orderBy('transaction_log_id','ASC');

 
		return view('reports.salesreport',['custom_js'=>['chartjs.js','reports.js'],'today_sales'=>$today_sales->get()]);
	}


	public function transactionsReport(Request $req){

		$from = date('Y-m-d');
		
		$to =  	date('Y-m-d');

		$default_report = DB::table('transactions')->orderBy('transaction_date','desc');

		return view('reports.customer-transactions',['custom_js'=>['chartjs.js','transaction-reports.js'],'default_report'=>$default_report->get()]);

	}

	public function salesReportFilterDate(Request $req){

	$from = $req->input('start_date');

	$to = $req->input('end_date');

	$filtered_dates_reports  = null;

	if($from=='' && $to==''){
	$filtered_dates_reports =  DB::table('transactions')
								    ->join('order_log', 'order_log.transaction_id', '=', 'transactions.transaction_log_id')
								    ->join('product_list', 'product_list.product_code', '=', 'order_log.product_code')
								->orderBy('transaction_date','ASC');
	}else{
	$filtered_dates_reports =  DB::table('transactions')
								    ->join('order_log', 'order_log.transaction_id', '=', 'transactions.transaction_log_id')
								    ->join('product_list', 'product_list.product_code', '=', 'order_log.product_code')
								->whereBetween('transaction_date', [$from, $to])
								->orderBy('transaction_date','ASC');		
	}
	

	echo json_encode(['results'=>$filtered_dates_reports->get()]);
	
	}


	public function customerReportFilterDate(Request $req){

		$from = $req->input('start_date');
		$to = $req->input('end_date');
		$filtered_dates_reports = null;

		if($from =='' && $to ==''){
		$filtered_dates_reports = DB::table('transactions')
												->orderBy('transaction_date','ASC');
		}else{
		$filtered_dates_reports = DB::table('transactions')->whereBetween('transaction_date',[$from,$to])
												->orderBy('transaction_date','ASC');
		}

		echo json_encode(['results'=>$filtered_dates_reports->get()]);

	}


	public function viewTransaction(Request $req){

		$tx_code = DB::table('transactions')->where('transaction_or_number','=',$req->input('ornumber'))->first();

		$transaction = DB::table('order_log')
							->join('product_list', 'product_list.product_code', '=', 'order_log.product_code')
							->where('transaction_id','=',$tx_code->transaction_log_id)->get();

		return view('reports.customer-transaction',['data'=>$transaction,'tx_code'=>$tx_code->transaction_or_number]);
	}

	public function productRestockReport(){

		$product_to_restock = DB::table('product_list')
			->join('suppliers', 'suppliers.supplier_id', '=', 'product_list.product_supplier','LEFT')
			->whereRaw('product_list.stock_onhand <= product_list.restock_count');
		

		return view('reports.product_restock',['product_to_restock'=>$product_to_restock->get(),'custom_js'=>['restock_report.js']]);

	}

}?>