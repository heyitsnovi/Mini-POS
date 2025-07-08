<?php
namespace App\Http\Controllers;


use Illuminate\Http\Request;
use DB;
use Validator;
use Auth;
use Illuminate\Support\Facades\File;

class PrintController extends Controller{

	public function test(Request $req){
 		
	}

	public function printReceipt($transaction_id){

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
		

		$str = '';

		$orders = DB::table('order_log')
					->join('product_list', 'order_log.product_code', '=', 'product_list.product_code')
					->where('transaction_id','=',$transaction_id)->get();

		$customer_info = DB::table('transactions')->where('transaction_log_id','=',$transaction_id)->first();

		$str.='<html>
		<head>
		<title>Order Details</title>
		</head>
		<body>';
		$str.='
			<style>
			body{
				font-family: Tahoma;
			}
			table td, table th, table tr {
				border: 1px solid #c9c9c9 !important
				}
				table{
				    border-collapse:collapse;
				    font-size:11px;
				}</style>';
			
	 	$str.='
	 	<div style="text-align:center;">
		 	<h3>'.$data['store_name'].'</h3>
		 	<div style="font-size:11px;  margin-top:-120px;">'.$data['address'].' </div>
		 	<div style="font-size:11px;">Phone No: '.$data['contact_number'].'</div>
	 	</div>
	 	<div>
	 	 	<br>
	 	<div style="font-size:11px;">Date: '.date('m/d/Y',strtotime($customer_info->created_at)).'</div>
	 	<div style="font-size:11px;">Time: '.date('H:i:s a',strtotime($customer_info->created_at)).'</div>
	 	<div style="font-size:11px;">Cashier: '.Auth::user()->name.'</div>
	 	</div>
	 	<br>
	 	</div>
	 	<div style="text-align:center; margin-bottom:10px; font-weight:bold;">ORDER DETAILS</div>

	 	<table border="1" style="width:100%;">
	 	<tr class="dotted">
	 			<td>Item Name</td>
	 			<td style="text-align:center;">Price</td>
	 			<td style="text-align:center;">Qty</td>
	 			<td style="text-align:center;">Payable</td>
	 	</tr>';

	 	$itemcount = 0;

	 	$total_payable = 0;

		foreach($orders as $order){
			
			$itemcount++;
			
			$total_payable+=($order->product_price * $order->product_qty_ordered);

					$str.='<tr class="dotted">';
					$str.='<td>'.$order->product_name.'   </td>';
					$str.='<td style="text-align:center;">'.number_format($order->product_price,2).'</td>';
					$str.='<td style="text-align:right;">'.$order->product_qty_ordered.'</td>';
					$str.='<td style="text-align:right;">'.number_format(($order->product_price * $order->product_qty_ordered),2).'</td>';
 				$str.='</tr>';
		}

		$str.='</table></div>
				------------------------------------------------------- 
				<br>
				<div style="font-size:11px;">Total # of item(s):'.$itemcount.'</div>
				-------------------------------------------------------
				<div style="font-size:11px;">Total Amount Payable: '.number_format($total_payable,2).'</div>
				-------------------------------------------------------
				<div style="font-size:11px;">Amount Tendered: '.number_format($customer_info->amount_tendered,2).'</div>
				-------------------------------------------------------
				<div style="font-size:11px;">Change: '.number_format(($customer_info->amount_tendered - $total_payable),2).'</div>
				-------------------------------------------------------
				<div style="text-align:center; font-size:12px;"> ******* Not valid as official receipt ******* </div>
				</body>
			</html>';

		$mpdf = new \Mpdf\Mpdf(['format' => [100, 125]]);
		$mpdf->writeHTML($str);
		$mpdf->Output();

	}
}

?>