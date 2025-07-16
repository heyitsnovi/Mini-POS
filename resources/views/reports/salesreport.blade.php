@extends('layouts.app')
@section('content')

 @php
	$sales_report = 0;	
@endphp			
@foreach($today_sales as $sales)

@php
		$sales_report+=($sales->product_qty_ordered * $sales->product_price);
@endphp

@endforeach

<style>
	.total-sales-label{
		font-weight: bold;
    	font-size: 20px
	}
</style>
<div class="row">
	<div class="col-md-12">
		<div class="box box-danger">
			    <div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-calendar"></i> Date Select</h3>
                </div>
                <div class="box-body">

                		<div class="col-md-6">
                			<label>Start Date:</label>
                			<input type="text" name="start_report_date" class="form-control start_report_date"  value="" />
                		</div>
                		<div class="col-md-6">
                			<label>End Date:</label>
                			<input type="text" name="end_report_date" class="form-control end_report_date" value=""  />
                		</div>
                		
                		<div class="col-md-12">
                			<br>
	                		<button class="btn btn-primary btn-md btn-show-reports">
	                			<i class="fa fa-search"></i>
	                			Show Reports
	                		</button>
	                		<button class="btn btn-danger btn-md btn-clear-reports-filter">
	                			<i class="fa fa-ban"></i>
	                			Clear Filters
	                		</button>
                		</div>
                </div>
		</div>

	</div>

	<div class="col-md-12">
		<div class="box box-success">
			    <div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-print"></i> Query Result(s)</h3>
                </div>
                <div class="box-body">
                 
                 	<div class="table-responsive">
	                	<table class="table table-condesed table-stripped table-hover tbl-salesresult">
	                		<thead>
	                			<tr>
	                				<td>Barcode #</td>
	                				<td>Assigned OR #</td>
	                				<td>Date Sold</td>
	                				<td>Item Name</td>
	                				<td>Quantity</td>
	                				<td>Price</td>
	                				<td>Total</td>
	                			</tr>
	                		</thead>
	                			<tbody></tbody>
	                	</table>
                	</div>
                </div>
		</div>
	</div>	
</div>

@endsection

