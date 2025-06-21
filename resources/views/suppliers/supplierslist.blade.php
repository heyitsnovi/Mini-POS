@extends('layouts.app')
@section('content')

<style>
    .btn-add-supplier,.btn-uncategorized-products{
        margin-bottom: 10px;
    }
 
</style>
  @if (session('status'))
<div class="alert alert-success no-border">
    <button type="button" class="close" data-dismiss="alert"><span>×</span><span class="sr-only">Close</span></button>
    <span class="text-semibold">Success : </span> {{ session('status') }}
</div>
@endif
<div class="row">
	<div class="col-md-12">
		<div class="box box-success">
			    <div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-truck"></i> Suppliers </h3>
                </div>
                <div class="box-body">
                     
                     <a href="/admin/product/add-supplier" class="btn btn-success btn-sm btn-add-supplier">
                        <i class="fa fa-plus"></i>
                        New Supplier
                    </a>

      

                  	<div class="table-responsive">
	                	<table class="table table-condesed table-stripped table-hover tbl-suppliers">
	                		<thead>
	                			<tr>
	                				
	                				
	                				<td>Supplier ID</td>
	                				<td>Supplier Name</td>
	                				<td>Address</td>
	                				<td>Contact</td>
	                				<td>Email</td>
	                				<td>Actions</td>
	                			</tr>
	                		</thead>
	                		<tbody class="tbody-results-filter">

 	
	                	@foreach($suppliers as $supplier)
 
	         				<tr>
	         					<td>{{$supplier->supplier_id}}</td>
	         					<td>{{$supplier->supplier_name}}</td>
	         					<td>{{$supplier->supplier_address}}</td>
	         					<td>{{$supplier->supplier_contact}}</td>
	         					<td>{{$supplier->supplier_email}}</td>
	         					<td>
 					             <div class="dropdown">
                                          <button class="btn btn-sm btn-default dropdown-toggle" type="button" data-toggle="dropdown">Options
                                          <span class="caret"></span></button>
                                          <ul class="dropdown-menu">
                                          	<li><a href="/admin/product/suppliers/view/{{$supplier->supplier_id}}">View Purchases</a></li>
                                            <li><a href="/admin/product/suppliers/edit/{{$supplier->supplier_id}}">Update</a></li>
                                          </ul>
                                    </div> 	
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

