<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use Auth;
use Illuminate\Support\Facades\File;

class PrintController extends Controller
{
    public function test(Request $req)
    {
        //
    }

    public function printReceipt($transaction_id)
    {
        $jsonPath = base_path('store-settings.json');

        if (File::exists($jsonPath)) {
            $data = json_decode(File::get($jsonPath), true);
        } else {
            $data = [
                'store_name' => '',
                'contact_number' => '',
                'address' => '',
                'currency_sign' => ''
            ];
        }

        $orders = DB::table('order_log')
            ->join('product_list', 'order_log.product_code', '=', 'product_list.product_code')
            ->where('transaction_id', '=', $transaction_id)
            ->get();

        $customer_info = DB::table('transactions')
            ->where('transaction_log_id', '=', $transaction_id)
            ->first();

        $itemcount = 0;
        $total_payable = 0;

        $tx_time = new \DateTime($customer_info->created_at);

        $str = '<html>
        <head>
        <title>Order Details</title>
        <style>
            body {
                font-family: Tahoma;
                font-size: 8pt;
                margin: 0;
                padding: 0;
            }
            h3 {
                font-size: 10pt;
                margin: 0;
            }
            table {
                border-collapse: collapse;
                width: 100%;
                font-size: 8pt;
            }
            table, th, td {
                border: 1px solid #c9c9c9;
                padding: 3px;
            }
            .center {
                text-align: center;
            }
            .right {
                text-align: right;
            }
            .info {
                font-size: 8pt;
                margin-bottom: 3px;
            }
            .divider {
                text-align: center;
                margin: 5px 0;
            }
        </style>
        </head>
        <body>';

        $str .= '
        <div class="center">
            <h3>' . $data['store_name'] . '</h3>
            <div class="info">' . $data['address'] . '</div>
            <div class="info">Phone No: ' . $data['contact_number'] . '</div>
        </div>

        <div class="info">Date: ' . date('m/d/Y', strtotime($customer_info->created_at)) . '</div>
        <div class="info">Time: ' . $tx_time->format('h:i A') . '</div>
        <div class="info">Cashier: ' . Auth::user()->name . '</div>
        <div class="info">Customer: ' . ucwords($customer_info->customer_info) . '</div>

        <div class="divider"><strong>SALES INVOICE : ' .$customer_info->transaction_or_number. '</strong></div>

        <table>
            <tr>
                <th>Item Name</th>
                <th class="right">Quantity</th>
                <th class="center">Unit Price</th>
                <th class="right">Price</th>
            </tr>';

        foreach ($orders as $order) {
            $itemcount++;
            $line_total = $order->product_price * $order->product_qty_ordered;
            $total_payable += $line_total;

            $str .= '
            <tr>
                <td>' . $order->product_name . '</td>

                <td class="right">' . $order->product_qty_ordered . '</td>
                
                <td class="right">' . number_format($order->product_price, 2) . '</td>

                <td class="right">' . number_format($line_total, 2) . '</td>
            </tr>';
        }

        $change = $customer_info->amount_tendered - $total_payable;

        $str .= '</table>
        <br>
        <div class="info">Total # of item(s): ' . $itemcount . '</div>

        <div class="info">Total Amount Payable: '.$data["currency_sign"] .' ' . number_format($total_payable, 2) . '</div>

        <div class="info">Amount Tendered: '.$data["currency_sign"] .' ' . number_format($customer_info->amount_tendered, 2) . '</div>

        <div class="info">Change: '.$data["currency_sign"] .' ' . number_format($change, 2) . '</div>
        <div class="divider"> --------------------------------------------------------------------------------------------------</div>
        <div class="center" style="font-size: 9pt; font-weight:bold;">************ NOT VALID AS OFFICIAL RECEIPT ************</div>
        </body>
        </html>';

        //A6
        $paper_size_one = [105,148.5];
        // 1/4 Sheet of paper
        $paper_size_two = [100,125];


        $mpdf = new \Mpdf\Mpdf([
            'format'=>$paper_size_one,
            'default_font_size' => 8,
            'margin_top' => 5,
            'margin_bottom' => 5,
            'margin_left' => 5,
            'margin_right' => 5,
        ]);

        $mpdf->WriteHTML($str);
        $mpdf->Output();
    }
}
