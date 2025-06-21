    @extends('layouts.app')
    @section('content')

<style>
    .help-block{
        color:red;
    }
</style>
    <div class="row">
        <div class="col-md-12">
                        <div class="box box-success">
                        <div class="box-header with-border">
                      <h3 class="box-title">Edit Supplier Details</h3>
                    </div>
                    <div class="box-body">
                                 <div class="row">
                                <form method="POST" class="update-supplier-form" action="{{url('admin/supplier/update-details')}}">
                                  @csrf
                                <input type="hidden" name="_supplier_id" value="{{$supplier_info->supplier_id}}" />
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Supplier Name:</label>
                                        <input type="text" name="supplier_name" class="form-control supplier_name" value="{{$supplier_info->supplier_name}}" />

                       @if($errors->has('supplier_name'))
                        <p class="help-block ">
                            {{ $errors->first('supplier_name') }}
                        </p>
                    @endif
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Supplier Address:</label>
                                        <input type="text" name="supplier_address" class="form-control supplier_address" value="{{$supplier_info->supplier_address}}" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Supplier Email:</label>
                                        <input type="text" name="supplier_email" class="form-control supplier_email" value="{{$supplier_info->supplier_email}}" />
                                    </div>
                                </div>   

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Supplier Contact No.:</label>
                                        <input type="text" name="supplier_contact" class="form-control supplier_contact" value="{{$supplier_info->supplier_contact}}"/>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <button class="btn btn-primary btn-md">
                                            <i class="fa fa-pencil"></i>
                                            Update Supplier
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                   
                    </div> 
                </div>
        </div>
 

    </div>
 
    @endsection
