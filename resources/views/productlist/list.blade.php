@extends('layouts.app')
@section('content')
<style>
    .btn-add-product{
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
                  <h3 class="box-title">Product List</h3>
                </div>                
                <div class="box-body">
                
                    <a href="/admin/product/add" class="btn btn-success btn-sm btn-add-product">
                        <i class="fa fa-plus"></i>
                        New Product
                    </a>
    
                    <div>
                        <span>Legend</span>
                        <ul>
                            <li>Red Label - Item is out of stock </li>
                            <li>Yellow Label - When the remaining stock falls below the restock quantity, the item will be highlighted in yellow label .</li>
                        </ul>
                    </div>
                    <br>
                    <div class="table-responsive">
                        <table class="table table-stripped table-condensed table-productlist">
                                <thead>
                                        <tr>
                                            <th>Product Code</th>
                                            <th>Product Name</th>
                                            <th>Stock</th>
                                            <th>Product Price</th>
                                            <th>Product Wholesale Price</th>
                                            <th>Supplier</th>
                                            <th>Product Category</th>
                                            <th>Product Status</th>
                                            <th>Actions</th>
                                        </tr>
                                </thead>
                                <tbody>
                           
                                </tbody>
                        </table>
                    </div>
                </div>
              </div>
            </div>
    </div>
@endsection
