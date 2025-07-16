<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use Carbon\Carbon;
use Auth;
class ReportsController extends Controller{


	public function dailySales(){

	    $today = Carbon::today()->format('Y-m-d');
	    $yesterday = Carbon::yesterday()->format('Y-m-d');

	    $today_total = DB::table('transactions')
	        ->join('order_log', 'order_log.transaction_id', '=', 'transactions.transaction_log_id')
	        ->join('product_list', 'product_list.product_code', '=', 'order_log.product_code')
	        ->whereDate('transaction_date', $today)
	        ->selectRaw('SUM(order_log.product_qty_ordered * product_list.product_price) as total')
	        ->value('total') ?? 0;

	    $yesterday_total = DB::table('transactions')
	        ->join('order_log', 'order_log.transaction_id', '=', 'transactions.transaction_log_id')
	        ->join('product_list', 'product_list.product_code', '=', 'order_log.product_code')
	        ->whereDate('transaction_date', $yesterday)
	        ->selectRaw('SUM(order_log.product_qty_ordered * product_list.product_price) as total')
	        ->value('total') ?? 0;

	    // Calculate % difference
	    $difference = $yesterday_total > 0
	        ? (($today_total - $yesterday_total) / $yesterday_total) * 100
	        : ($today_total > 0 ? 100 : 0); // avoid division by zero

	    $is_increase = $today_total >= $yesterday_total;

	    return view('reports.sales-today', [
	        'today_sales' => $today_total,
	        'yesterday_sales' => $yesterday_total,
	        'percentage_difference' => round($difference, 2),
	        'is_increase' => $is_increase,
	    ]);
	}

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

		return view('reports.customer-transactions',['custom_js'=>['chartjs.js','transaction-reports.js']]);

	}

public function salesReportFilterDate(Request $req){

    $start = $req->input('start') ?? 0;
    $length = $req->input('length') ?? 10;
    $search = $req->input('search')['value'] ?? '';
    $orderColumn = $req->input('order')[0]['column'] ?? 0;
    $orderDir = $req->input('order')[0]['dir'] ?? 'asc';
    $from = $req->input('start_date');
    $to = $req->input('end_date');

	if ($from === '__USE_EARLIEST__') {
    // Get the earliest transaction_date
    	$from = DB::table('transactions')->min('transaction_date');
	}

    // Define columns for ordering
    $columns = [
        'transactions.transaction_date',
        'transactions.transaction_log_id',
        'product_list.product_name',
        'order_log.product_qty_ordered',
        'product_list.product_price'
    ];

    // Base query
    $query = DB::table('transactions')
        ->join('order_log', 'order_log.transaction_id', '=', 'transactions.transaction_log_id')
        ->join('product_list', 'product_list.product_code', '=', 'order_log.product_code')
        ->select(
            'transactions.transaction_date',
            'transactions.transaction_log_id',
            'product_list.product_name',
            'order_log.product_qty_ordered',
            'product_list.product_price',
            'order_log.product_code',
            'transactions.transaction_or_number',
            DB::raw('(product_list.product_price * order_log.product_qty_ordered) as subtotal')
        );

    // Date filtering
    if (!empty($from) && !empty($to)) {
        $query->whereBetween('transactions.transaction_date', [$from, $to]);
    }

    // Search
    if (!empty($search)) {
        $query->where(function ($q) use ($search) {
            $q->where('product_list.product_name', 'LIKE', "%{$search}%")
              ->orWhere('transactions.transaction_log_id', 'LIKE', "%{$search}%");
        });
    }

    // Ordering
    if (isset($columns[$orderColumn])) {
        $query->orderBy($columns[$orderColumn], $orderDir);
    }

    // Get counts
    $filteredRecords = $query->count();

    $results = $query->skip($start)->take($length)->get();

    // Compute total sales (filtered)
    $totalSalesQuery = DB::table('transactions')
        ->join('order_log', 'order_log.transaction_id', '=', 'transactions.transaction_log_id')
        ->join('product_list', 'product_list.product_code', '=', 'order_log.product_code');

    if (!empty($from) && !empty($to)) {
        $totalSalesQuery->whereBetween('transactions.transaction_date', [$from, $to]);
    }

    if (!empty($search)) {
        $totalSalesQuery->where(function ($q) use ($search) {
            $q->where('product_list.product_name', 'LIKE', "%{$search}%")
              ->orWhere('transactions.transaction_log_id', 'LIKE', "%{$search}%");
        });
    }

    $totalSales = $totalSalesQuery
        ->select(DB::raw('SUM(product_list.product_price * order_log.product_qty_ordered) as total'))
        ->value('total');

    // Format data for DataTables
    $data = [];
    foreach ($results as $row) {
        $data[] = [
            'transaction_date' => $row->transaction_date,
            'transaction_id' => $row->transaction_log_id,
            'item_name' => $row->product_name,
            'quantity' => $row->product_qty_ordered,
            'price' => number_format($row->product_price, 2),
            'total' => number_format($row->subtotal, 2),
            'product_code'=>$row->product_code,
            'assigned_or'=>$row->transaction_or_number,
            'date_sold'=>$row->transaction_date,

        ];
    }

    // Get full total records without filters
    $totalRecords = DB::table('transactions')->count();

    return response()->json([
        'draw' => intval($req->input('draw')),
        'recordsTotal' => $totalRecords,
        'recordsFiltered' => $filteredRecords,
        'data' => $data,
        'total_sales' => number_format($totalSales ?? 0, 2),
        'current_username'=>Auth::user()->name
    ]);
}




public function customerReportFilterDate(Request $req){

    $start = $req->input('start') ?? 0;
    $length = $req->input('length') ?? 10;
    $search = $req->input('search')['value'] ?? '';
    $orderColumn = $req->input('order')[0]['column'] ?? 0;
    $orderDir = $req->input('order')[0]['dir'] ?? 'asc';

    $from = $req->input('start_date');
    $to = $req->input('end_date');



   if ($from === '__USE_EARLIEST__') {
    // Get the earliest transaction_date
    	$from = DB::table('transactions')->min('transaction_date');
	}


	$totalRecords = DB::table('transactions')->count();

    $query = DB::table('transactions');

    if (!empty($from) && !empty($to)) {
        $query->whereBetween('transaction_date', [$from, $to]);
    }

    $query->orderBy('transaction_date', 'ASC');

    $filteredRecords = $query->count();

    $results =  $query->skip($start)->take($length)->get();

        // Compute total sales (filtered)
    $totalSalesQuery = DB::table('transactions')
        ->join('order_log', 'order_log.transaction_id', '=', 'transactions.transaction_log_id')
        ->join('product_list', 'product_list.product_code', '=', 'order_log.product_code');

    if (!empty($from) && !empty($to)) {
        $totalSalesQuery->whereBetween('transactions.transaction_date', [$from, $to]);
    }

    if (!empty($search)) {
        $totalSalesQuery->where(function ($q) use ($search) {
            $q->where('product_list.product_name', 'LIKE', "%{$search}%")
              ->orWhere('transactions.transaction_log_id', 'LIKE', "%{$search}%");
        });
    }

    $totalSales = $totalSalesQuery
        ->select(DB::raw('SUM(product_list.product_price * order_log.product_qty_ordered) as total'))
        ->value('total');


    $data = [];

    foreach ($results as $transaction) {
        $data[] = [
  			'payment_type'=>$transaction->payment_type,
  			'customer_info'=>$transaction->customer_info,
  			'date_sold'=>$transaction->transaction_date,
  			'assigned_or'=>$transaction->transaction_or_number,
            'amount_paid' => number_format(getTransactionTotal($transaction->transaction_log_id), 2),
            'actions'=>'
	         <div class="dropdown">
			  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"> Actions
			  <span class="caret"></span></button>
			  <ul class="dropdown-menu">
			    <li><a style="cursor:pointer;" data-ornumber="'.$transaction->transaction_or_number.'" class=" btn-view-transaction"><i class="fa fa-eye"></i> View</a></li>
			    <li><a target="_blank" href=" '.url('admin/sales/print-transaction/code').'/'.$transaction->transaction_log_id.' " data-logid="'.$transaction->transaction_log_id.'" class=""><i class="fa fa-print"></i> Receipt </a></li>
			    <li><a style="cursor:pointer;" data-ornumber="'.$transaction->transaction_log_id.'" class=" btn-sm btn-cancel-sales"><i class="fa fa-ban"></i> Cancel </a></li>
			  </ul>
			</div>

	         '
        ];
    }

   

    return response()->json([
        'data' => $data,
        'recordsTotal' =>$totalRecords,
        'recordsFiltered' => $filteredRecords,
        'draw' => intval($req->input('draw')),
        'current_username'=>Auth::user()->name,
        'total_sales' => number_format($totalSales ?? 0, 2),
    ]);
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