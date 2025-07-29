<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Bouncer;
use Auth;
use DB;
use Carbon\Carbon;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();

        $today = Carbon::today()->format('Y-m-d');
        $yesterday = Carbon::yesterday()->format('Y-m-d');

        $product_count = \DB::table('product_list')->count();

        $today_total = DB::table('transactions')
            ->join('order_log', 'order_log.transaction_id', '=', 'transactions.transaction_log_id')
            ->join('product_list', 'product_list.product_code', '=', 'order_log.product_code')
            ->whereDate('transaction_date', $today)
            ->selectRaw('SUM(order_log.product_qty_ordered * product_list.product_price) as total')
            ->value('total') ?? 0;
        
        $product_to_restock_count = DB::table('product_list')
            ->join('suppliers', 'suppliers.supplier_id', '=', 'product_list.product_supplier','LEFT')
            ->whereRaw('product_list.stock_onhand <= product_list.restock_count')->count();

        $customers_today = DB::table('transactions')->where('transaction_date','=',$today)->count();

        return view('home',[
                'product_count'=>$product_count,
                'today_total'=>$today_total,
                'customers_today'=>$customers_today,
                'today'=>$today,
                'product_to_restock_count'=>$product_to_restock_count,
                'custom_js'=>[
                    'apexcharts.js',
                    'dashboard-main.js']
        ]);
    }
}
?>