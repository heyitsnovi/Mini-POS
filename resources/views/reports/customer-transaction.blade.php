<style>
	.total-amt-payable-items{
		font-weight: bold;
		font-size: 15px;
	}
	tbody > tr{

		font-size: 15px;
	}
	.or-code-customer{
		font-weight: bold;
		font-size: 15px;
		margin-bottom: 10px;
	}
</style>
<div class="or-code-customer">
	Transaction OR # : <span>{{$tx_code}}</span>
</div>
<div class="table-responsive">
	<table class="table table-condensed table-stripped table-bordered tbl-order-log-customer" style="width:100%">
		<thead>
			<tr>
				<th>Barcode/SKU #</th>
				<th>Item Name</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Total</th>
				<th> Option </th>
			</tr>
		</thead>
		<tbody>
			@php
			$total = 0;
			@endphp
			@foreach($data as $item)
			@php
			$total+=($item->product_price * $item->product_qty_ordered);
			@endphp	
				<tr>
					<td>{{$item->product_code}}</td>
					<td  class="text-center">{{$item->product_name}}</td>
					<td  class="text-right">{{$item->product_qty_ordered}}</td>
					<td  class="text-right">{{number_format($item->product_price,2)}}</td>
					<td  class="text-right">{{number_format($item->product_price * $item->product_qty_ordered,2)}}</td>
					<td class="text-center">
						<button data-orderid="{{$item->order_id}}" data-txid="{{$item->transaction_id}}" class="btn btn-xs btn-danger remove-tx-item"> Remove </button>
					</td>
				</tr>
			@endforeach
		</tbody>
	</table>
	<div class="pull-right total-amt-payable-items">Total Amount Payable: ₱ {{number_format($total,2)}}</div>
</div>
<script>


	$('.tbl-order-log-customer').DataTable( {
				        dom: 'Bfrtip',
				           "columnDefs": [
						        { "width": "150px", "targets": 0 }, 
						        { "width": "100px", "targets": 3 } 
						    ],
				        buttons: [
				       {
				       	extend: 'print',
				       	exportOptions:{
				       		columns: [ 0, 1, 2, 3 ,4]
				       	}
				       },
				            {
				                extend: 'excelHtml5',
				                exportOptions: {
				                    columns: ':visible'
				                }
				            },
				            {
				                extend: 'pdfHtml5',
				                exportOptions: {
				                    columns: [ 0, 1, 2, 3 ,4]
				                }
				            },
				            'colvis'
				        ]
		});


	$(document).on('click','.remove-tx-item',function(){

			let tx_id = this.dataset.txid;
			let order_id = this.dataset.orderid;
			let btn_obj = this;

			$.ajax({

				url: '/admin/ajax/remove-transaction-item',
				method:'POST',
				data:{
					transaction_id:tx_id,
					order_id:order_id,
					_token: $('meta[name="csrf-token"]').attr('content')
				},success:function(response){

					if(response.status == true){

						$(btn_obj).closest('tr').fadeOut(1000);
					}

				}

			});
	});
</script>
