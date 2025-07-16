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
                  <h3 class="box-title"><i class="fa fa-user"></i> Customer Transactions</h3>
                </div>
                <div class="box-body">
                	<div class="table-responsive tbl-result-transactions-search">
               	             <table class="table table-condesed table-stripped table-hover tbl-customer-salesresult">
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
	                		</tbody>
	                	</table>

                	</div>
                </div>
			</div>
	</div>
</div>

@endsection