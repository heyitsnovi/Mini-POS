@extends('layouts.app')
@section('content')
<style>
		tbody > tr{
		 
		font-size: 15px;
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
                			<input type="text" name="start_report_date" class="form-control start_report_date"  />
                		</div>
                		<div class="col-md-6">
                			<label>End Date:</label>
                			<input type="text" name="end_report_date" class="form-control end_report_date" />
                		</div>
                		
                		<div class="col-md-12">
                			<br>
	                		<button class="btn btn-primary btn-md btn-show-transactions-reports">
	                			<i class="fa fa-search"></i>
	                			Show Transactions
	                		</button>
                		</div>

                </div>
			</div>
	</div>

	<div class="col-md-12">
			<div class="box box-success">
			<div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-user"></i> Customer Transactions</h3>
                </div>
                <div class="box-body">
                	<div class="table-responsive tbl-result-transactions-search">
               	             <table class="table table-condesed table-stripped table-hover tbl-customer-salesresult dt-select datatable">
	                		<thead>
	                			<tr>
	         	 
	                				<td>OR Number </td>
	                				<td>Transaction Date</td>
	                				<td>Customer Name</td>
	                				<td>Payment Type</td>
	                				<td>Amount Paid</td>
	                				<td>Actions</td>
	                			</tr>
	                		</thead>
	                		<tbody class="tbody-transactions-results-filter">

 	
	                	@foreach($default_report as $sales)
 
	         				<tr>
	         				 
	         					<td>{{$sales->transaction_or_number}}</td>
	         					<td>{{$sales->transaction_date}}</td>
	         					<td>{{$sales->customer_info}}</td>
	         					<td>{{$sales->payment_type}}</td>
	         					<td>{{ number_format(getTransactionTotal($sales->transaction_log_id),2) }}</td>
	         					<td>
	         						<a data-ornumber="{{$sales->transaction_or_number}}" class="btn btn-success btn-sm btn-view-transaction"><i class="fa fa-eye"></i> View</a>

	         						<a target="_blank" href="{{url('admin/sales/print-transaction/code')}}/{{$sales->transaction_log_id}}" data-logid="{{$sales->transaction_log_id}}" class="btn btn-primary btn-sm"><i class="fa fa-print"></i> Receipt </a>

	         						<a data-ornumber="{{$sales->transaction_log_id}}" class="btn btn-danger btn-sm btn-cancel-sales"><i class="fa fa-ban"></i> Cancel</a>
	         						
	         					</td>
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