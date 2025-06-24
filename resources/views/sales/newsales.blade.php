@inject('request', 'Illuminate\Http\Request')
@extends('layouts.app')
@section('content')

</style>
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
                        <button type="button" class="btn btn-success btn-add-payment btn-block"><i class="fa fa-money"></i> F7 -  Payment</button>
                        <code>Coupon codes are not stackable. Only 1 coupon code per transaction is allowed.</code>
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
                        <button type="button" class="btn btn-primary btn-sales-coupon-add  "><i class="fa fa-tags"></i> F9 -  Coupon</button>
                      <button type="button" class="btn btn-danger btn-cancel-sales  "><i class="fa fa-ban"></i> F10 - Cancel Sales</button>
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
