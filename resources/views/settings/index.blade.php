@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-12">
        @if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Store Settings</h3>
            </div>
            <div class="panel-body">
                <form role="form" method="POST" accept-charset="utf-8" action="{{url('admin/utils/store-settings/save')}}">
                       @csrf
                     <div class="form-group">
                            <label for="storeName">Store Name</label>
                            <input type="text" class="form-control @error('storeName') is-invalid @enderror" 
                               id="storeName" name="storeName" 
                               value="{{ old('storeName', $data['store_name']) }}">
                            @error('storeName')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="contactNumber">Contact Number</label>
                            <input type="text" class="form-control @error('contactNumber') is-invalid @enderror" 
                               id="contactNumber" name="contactNumber" 
                               value="{{ old('contactNumber', $data['contact_number']) }}">
                            @error('contactNumber')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="address">Address</label>
                           <textarea class="form-control @error('address') is-invalid @enderror" 
                                id="address" name="address" rows="3">{{ old('address', $data['address']) }}</textarea>
                            @error('address')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                    <!-- Theme Dropdown -->
                    <div class="form-group">
                        <label for="theme">Theme</label>
                        <select class="form-control @error('theme') is-invalid @enderror" id="theme" name="theme">
                            <option value="skin-green" {{ old('theme', $data['theme']) == 'skin-green' ? 'selected' : '' }}>Green</option>
                            <option value="skin-blue" {{ old('theme', $data['theme']) == 'skin-blue' ? 'selected' : '' }}>Blue</option>
                            <option value="skin-black" {{ old('theme', $data['theme']) == 'skin-black' ? 'selected' : '' }}>Black</option>
                            <option value="skin-red" {{ old('theme', $data['theme']) == 'skin-red' ? 'selected' : '' }}>Red</option>
                            <option value="skin-purple" {{ old('theme', $data['theme']) == 'skin-purple' ? 'selected' : '' }}>Purple</option>
                            <option value="skin-yellow" {{ old('theme', $data['theme']) == 'skin-yellow' ? 'selected' : '' }}>Yellow</option>
                        </select>
                        @error('theme')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>


                        <div class="form-group">
                            <label for="currency_symbol">Currency Sign / Symbol</label>
                            <input type="text" class="form-control @error('currency_symbol') is-invalid @enderror" 
                               id="currency_symbol" name="currency_symbol" 
                               value="{{ old('currency_symbol', $data['currency_sign']) }}">
                            @error('currency_symbol')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>


                    <button type="submit" class="btn btn-primary">Save Store Settings</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
