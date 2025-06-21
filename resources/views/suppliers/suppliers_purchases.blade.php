@extends('layouts.app')
@section('content')

<div class="row">
	<div class="col-md-12">
		<div class="box box-success">
			    <div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-truck"></i> Viewing Supplier - {{$supplier_info->supplier_name}}</h3>
                </div>
                <div class="box-body">
  
                 	<div class="table-responsive">
	                	<table class="table table-condesed table-stripped table-hover tbl-supplier-purchases">
	                		<thead>
	                			<tr>
	                				<td>Barcode # / SKU</td>
	                				<td>Item Name</td>
	                				<td>Entry Date</td>
	                			</tr>
	                		</thead>
	                		<tbody class="tbody-results-filter">
	   						@foreach($supplies_purcahsed as $sp)
	   							<tr>
	   								<td>{{$sp->product_code}}</td>
	   								<td>{{$sp->product_name}}</td>
	   								<td>{{$sp->created_at}}</td>
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

