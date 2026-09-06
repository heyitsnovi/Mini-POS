@inject('request', 'Illuminate\Http\Request')
@extends('layouts.app')
@section('content')

</style>
  @if (session('status'))
<div class="alert alert-success no-border">
    <button type="button" class="close" data-dismiss="alert"><span>×</span><span class="sr-only">Close</span></button>
    <span class="text-semibold">Success : </span> {{ session('status') }}
</div>
@endif
    <div class="row">
        <div class="col-md-4">


            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-search"></i> Product Look Up
                </div>
                <div class="panel-body">
                        <input class="form-control searchItem" type="text" autocomplete="off" placeholder="Search product name here.."/>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
              <i class="fa fa-money"></i> Transction Details 
                </div>
                <div class="panel-body">

                    <ul class="list-group"> 
                        <li class="list-group-item amt-payable-lbl"> 
                        <span class="badge amt-payable badge-success">0.00</span> Amount Payable: 
                        </li> 
                        <li class="list-group-item coupon-code-attached"> <span class="badge coupon-code-name "></span> Coupon Code: </li>
                         <li class="list-group-item coupon-code-amount"> <span class="badge coupon-code-value"></span> Discount Amount: </li>
                      </ul>
                        
                        <code>Coupon codes are not stackable. Only 1 coupon code per transaction is allowed.</code>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
              <i class="fa fa-upload"></i> Load JSON Transaction Draft
                </div>
                <div class="panel-body">
                    <form method="POST" action="{{ url('admin/upload-cart-draft') }}" enctype="multipart/form-data" id="upload-cart-draft-form">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}" />

                        <input type="file" name="json_file" class="form-control" accept=".json" required id="json_file">

                        <button type="button" class="btn btn-primary btn-block btn-upload-cart-draft" style="margin-top: 10px;">
                            <i class="fa fa-upload"></i> Upload
                        </button>
                    </form>
                </div>
            </div>


        </div>
        <div class="col-md-8">
             <div class="panel panel-default">
                <div class="panel-heading">
                   <i class="fa fa-cog"></i> POS Menu
                </div>
                <div class="panel-body">
                  <div class="btn-group">
                        <button type="button" class="btn btn-success btn-add-payment"><i class="fa fa-money"></i> F7 -  Payment</button>
                        <button type="button" class="btn btn-primary btn-sales-coupon-add  "><i class="fa fa-tags"></i> F9 -  Coupon</button>
                      <button type="button" class="btn btn-danger btn-cancel-sales  "><i class="fa fa-ban"></i> F10 - Cancel Sales</button>
                      <button type="button" class="btn btn-warning btn-draft-save  "><i class="fa fa-save"></i> F11 - Save Draft</button>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                   <i class="fa fa-shopping-cart"></i> Ordered Item(s) :  <span class="item-count"></span>
                </div>
                <div class="panel-body">
                     <input type="text" autocomplete="off" name="barcode_item" class="form-control barcode-item" placeholder="Scan or Enter barcode here..."/>
    

                    <div class="table-responsive">
                        <table class="table table-condensed table-stripped table-pos-sales table-bordered">
                                <thead>
                                    <tr class="success">
                                        <th>Item Code</th>
                                        <th>Item Name</th>
                                        <th>Unit Price</th>
                                        <th>Quantity</th>
                                        <th>Total Price</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                            <tbody class="cart-items-table"></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
