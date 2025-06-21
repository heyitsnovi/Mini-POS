@extends('layouts.app')
@section('content')

<style>
	.btn-add-new-category{
		margin-bottom: 15px;
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
				                  <h3 class="box-title">Product Categories</h3>
				                </div>
				                <div class="box-body">
				               		<button class="btn btn-success btn-add-new-category"> Add New </button>

										<div class="table-responsive">
				                        <table class="table table-stripped table-condensed table-categorylist">
				                                <thead>
				                                        <tr>
				                                            <th> ID</th>
				                                            <th> Name</th>
				                                            <th> Description</th>
				                                            <th>Actions</th>
				                                        </tr>
				                                </thead>
				                                <tbody>
				                                    @foreach($product_categories as $list)
				                                        <tr>
				                                            <td>{{$list->category_id}}</td>
				                                            <td><a href="#">{{$list->category_name}}</a></td>
				                                            <td>{{$list->category_description}}</td>
				                                            <td>
				                                                <div class="dropdown">
				                                                      <button class="btn btn-sm btn-default dropdown-toggle" type="button" data-toggle="dropdown">Options
				                                                      <span class="caret"></span></button>
				                                                      <ul class="dropdown-menu">
				                                                        <li><a href="#" class="edit-product-category" data-categoryid="{{$list->category_id}}">Update</a></li>
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
            </div>
    </div>
@endsection
