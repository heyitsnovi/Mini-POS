@extends('layouts.app')
@section('content')


  <form method="POST" class="add-product-form">

    <input type="hidden" name="_uploaded_img" value="no-image.png" />

    <div class="row">
        <div class="col-md-7">
            <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-cubes"></i> New Product</h3>
                </div>
                <div class="box-body">

                        <div class="clearfix">
                            <button  class="btn btn-primary btn-md btn-saveproduct pull-right " type="button">
                            <i class="fa fa-save"></i>  &nbsp;
                                 Save Product
                        </button>
                        </div>

 
                    <div class="row">
                          
                        <input type="hidden" name="_token" value="{{ csrf_token() }}" />

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>SKU/Product Code/Barcode:</label>
                                <input type="text" name="product_barcode" class="form-control product_barcode" value="{{$barcode_id}}"  readonly="" />
                            </div>
                        </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Product Name:</label>
                                    <input type="text" name="product_name" class="form-control product_name" />
                                </div>
                            </div>

                             <div class="col-md-6">
                                <div class="form-group">
                                    <label>Stock:</label>
                                    <input type="text" name="product_qty" class="form-control product_qty" />
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Product Price:</label>
                                    <input type="text" name="product_price" class="form-control product_price" placeholder="0.00" />
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Product Wholesale Price:</label>
                                    <input type="text" name="product_wholesale_price" class="form-control product_wholesale_price" placeholder="0.00" />
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Product Category:</label>
                                    <select class="form-control product_category" name="product_category">
                                         @foreach($product_categories as $list)
                                            <option value="{{$list->category_id}}">{{$list->category_name}}</option>
                                         @endforeach
                                   
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Product Status:</label>
                                    <select class="form-control product_status" name="product_status">
                                        <option value="1">Available</option>
                                        <option value="0">Out of stock</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Product Restock:</label>
                                    <input type="text" name="product_restock" class="form-control product_restock" placeholder="0" />
                                </div>
                            </div>

                      <div class="col-md-6">
                                <div class="form-group">
                                    <label>Product Supplier:</label>
                                    <select class="form-control product_supplier" name="product_supplier">
                                            <option value="0">Unspecified</option>
                                            @foreach($suppliers as $s)
                                            <option value="{{$s->supplier_id}}">{{$s->supplier_name}}</option>
                                            @endforeach;
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Product Description:</label>
                                    <textarea class="form-control product_description" name="product_description"></textarea>
                                </div>
                            </div>
 
                        </form>
                    </div>
                </div>
              </div>
            </div>
                    <div class="col-md-5">
            <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-photo"></i> Product Image (Optional)</h3>
                </div>
                <div class="box-body">
                <blockquote>Select Image  up to 5 MB only JPG,PNG,BMP,GIF only</blockquote>
              <form
              class="dropzone"
              id="upload-product-image">
              </form>
              <button class="btn btn-primary btn-upload-product-img pull-right" type="button">
                <i class="fa fa-cloud-upload"></i>
                  Upload
              </button>      
                </div>
            </div>
        </div>
        </div>
@endsection
