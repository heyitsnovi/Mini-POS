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
                                            <th>Restock</th>
                                            <th>Actions</th>
                                        </tr>
                                </thead>
                                <tbody>
                                    @foreach($productlist as $list)
                                    @php
                                        $class_stock_on_hand = '';

                                        if((int)$list->stock_onhand<=0){
                                            $class_stock_on_hand = 'danger';
                                        }else if((int)$list->stock_onhand<=(int)$list->restock_count){
                                             $class_stock_on_hand = 'warning';
                                    }
                                    @endphp
                                        <tr  class="{{$class_stock_on_hand }}">
                                            <td>{{$list->product_code}}</td>
                                            <td><a href="">{{$list->product_name}}</a></td>
                                            <td >{{$list->stock_onhand}}</td>
                                            <td>{{number_format($list->product_price,2)}}</td>
                                            <td>{{number_format($list->wholesale_price,2)}}</td>
                                            <td>{{$list->supplier_name!==NULL ? $list->supplier_name : 'Unspecified'}}</td>
                                            <td>{{$list->category_name}}</td>
                                            <td>{{$list->stock_onhand>=1 ? 'Available' : 'Out of stock'}}</td>
                                            <td>{{$list->restock_count}}</td>
                                            <td>
                                                <div class="dropdown">
                                                      <button class="btn btn-sm btn-default dropdown-toggle" type="button" data-toggle="dropdown">Options
                                                      <span class="caret"></span></button>
                                                      <ul class="dropdown-menu">
                                                        <li><a href="#">View</a></li>
                                                        <li><a href="/admin/product/update/{{$list->product_code}}">Update</a></li>
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
