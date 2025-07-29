@extends('layouts.app')

@section('content')

<div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3><?= $product_count ?></h3>

              <p>Products</p>
            </div>
            <div class="icon">
              <i class="fa fa-cubes"></i>
            </div>
            <a href="{{url('/admin/product/list')}}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>₱ <?= number_format($today_total,.2) ?></h3>

              <p>Today's Total Sales</p>
            </div>
            <div class="icon">
              <i class="fa fa-money"></i>
            </div>
            <a href="{{url('admin/sales/daily')}}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3><?= $product_to_restock_count ?></h3>

              <p>Products to Restock</p>
            </div>
            <div class="icon">
              <i class="fa fa-warning"></i>
            </div>
            <a href="{{url('admin/product/restock-products')}}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-purple">
            <div class="inner">
              <h3><?= $customers_today ?></h3>

              @if($customers_today > 1)
              <p>Customers Served</p>
              @else
              <p>Customer Served</p>
              @endif
            </div>
            <div class="icon">
              <i class="fa fa-user"></i>
            </div>
            <a href="{{ url('admin/customer-transactions/report/?start_date=') }}{{$today}}&end_date={{$today}}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
      </div>
    <div class="row">

        <div class="col-md-8">
             <div class="box box-success"> 
                <div class="box-header with-border">
                 <h3 class="box-title">Sales Graph</h3>
                 </div>
                <div class="box-body">
                    <div class="form-inline mb-3">
                        <label for="start_date">From: </label>
                        <input type="text" id="start_date" class="form-control mx-2 datepicker" placeholder="YYYY-MM-DD">
                        
                        <label for="end_date">To: </label>
                        <input type="text" id="end_date" class="form-control mx-2 datepicker" placeholder="YYYY-MM-DD">

                        <label for="limit">Limit: </label>
                        <select id="limit" class="form-control mx-2">
                            <option value="">No Limit</option>
                            <option value="7">7</option>
                            <option value="14">14</option>
                            <option value="30">30</option>

                        </select>

                        <label for="sort">Sort: </label>
                        <select id="sort" class="form-control mx-2">
                            <option value="desc">Descending</option>
                            <option value="asc">Ascending</option>
                        </select>

                        <button id="filterBtn" class="btn btn-primary ml-2">Apply</button>
                    </div>

                    <div id="dailySalesChart"></div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-money"></i> Most Sold Products</h3>
                </div>
                 <div class="box-body">
                    <ul class="list-group top-solds">
                    </ul>
                </div>
            </div>
        </div>
    </div>
@endsection
