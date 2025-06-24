@extends('layouts.app')
@section('content')
<div class="container mt-5">
    <div class="row justify-content-center">
        {{-- Today's Sales --}}
	<div class="col-md-6">
	    <div class="box box-success">
	        <div class="box-header with-border">
	            <h3 class="box-title">
	                <i class="fa fa-line-chart"></i> Today's Current Sales 
	            </h3>
	        </div>
	        <div class="box-body text-center">
	            <h2 class="text-green" style="font-size: 2.5rem; font-weight: bold;">
	                ₱ {{ number_format($today_sales, 2) }}
	            </h2>
	            
	            <p class="mt-2">
	                @if($percentage_difference > 0)
	                    <span class="text-success">
	                        <i class="fa fa-arrow-up"></i>
	                        {{ $percentage_difference }}% higher than yesterday
	                    </span>
	                @elseif($percentage_difference < 0)
	                    <span class="text-danger">
	                        <i class="fa fa-arrow-down"></i>
	                        {{ abs($percentage_difference) }}% lower than yesterday
	                    </span>
	                @else
	                    <span class="text-muted">No change from yesterday</span>
	                @endif
	            </p>

	            <p class="text-muted mt-2">
	                Updated as of {{ now()->format('F j, Y g:i A') }}
	            </p>
	        </div>
	    </div>
	</div>

        {{-- Yesterday's Sales --}}
        <div class="col-md-6">
            <div class="box box-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><i class="fa fa-line-chart"></i> Yesterday's Current Sales </h3>
                </div>
                <div class="box-body text-center">
                    <h2 class="text-orange" style="font-size: 2.5rem; font-weight: bold;">
                        ₱ {{ number_format($yesterday_sales, 2) }}
                    </h2>
                    <p class="text-muted mt-3">Updated as of {{ now()->format('F j, Y g:i A') }}</p>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection
