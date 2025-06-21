@extends('layouts.app')
@section('content')

<div class="row">
	<div class="col-md-12">
		<div class="box box-success">
			    <div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-print"></i> Low/Out of Stock Products</h3>
                </div>
                <div class="box-body">
                 <div>
                 	<code>These are the products that need to be restocked or low on stocks.</code>
                 </div>
                 <br>
                 	<div class="table-responsive">
	                	<table class="table table-condesed table-stripped table-hover tbl-restockproducts">
	                		<thead>
	                			<tr>
	                				<td>Barcode # / SKU</td>
	                				<td>Item Name</td>
	                				<td>Remaining Stock</td>
	                				<td>Supplier</td>
	                				<td>Restock</td>
	                			</tr>
	                		</thead>
	                		<tbody class="tbody-results-filter">
	                		@foreach($product_to_restock as $res)
	         				<tr>
	         					<td>{{$res->product_code}}</td>
	         					<td>{{$res->product_name}}</td>
	         					<td>{{$res->stock_onhand}}</td>
	         					<td>{{getSupplierDetails($res->product_supplier)}}</td>
	         					<td>{{$res->restock_count}}</td>
	         				</tr>
	         			@endforeach

	                		</tbody>
	                	</table>
                	</div>
                </div>
		</div>
	</div>	
</div>

@endsection

