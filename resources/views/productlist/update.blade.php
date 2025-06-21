    @extends('layouts.app')
    @section('content')
    <style>
        .btn-saveproduct{
            margin-bottom: 10px;
        }
        .bcode-img{
        letter-spacing: 10px !important;
        font-weight: bold;
        }
        .img-product{
            height: 260px;
            width: 260px;
        }
      
    </style>

    <div class="row">





<div class="col-md-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                      <h3 class="box-title"><i class="fa fa-cubes"></i> Update Product</h3>
                    </div>
                    <div class="box-body">
                               <button  class="btn btn-primary pull-right btn-md btn-updateproduct" type="button">
                                            <i class="fa fa-pencil"></i>  &nbsp;
                                                 Update Product
                                </button>
                        <div class="row">
                                <form method="POST" class="update-product-form">
                                     @if($product_info->product_image!==null)
                                      <input type="hidden" name="_uploaded_img" value="{{$product_info->product_image}}" />
                                     @else
                                    <input type="hidden" name="_uploaded_img" value="images/no-image.png" />
                                    @endif
                                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                                    <input type="hidden" name="_itemcode" value="{{$product_info->product_code}}" />
                                    <input type="hidden" name="_supplierID" value="{{$product_info->product_supplier}}" />
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>SKU/Product Code/Barcode:</label>
                                        <input type="text" name="product_barcode" class="form-control product_barcode" value="{{$product_info->product_code}}" />
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Product Name:</label>
                                        <input type="text" name="product_name" class="form-control product_name" value="{{$product_info->product_name}}" />
                                    </div>
                                </div>

                                 <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Stock:</label>
                                        <input type="text" name="product_qty" class="form-control product_qty"  value="{{$product_info->stock_onhand}}" />
                                    </div>
                                </div>


                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Product Price:</label>
                                        <input type="text" name="product_price" class="form-control product_price" placeholder="0.00" value="{{$product_info->product_price}}" />
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Product Wholesale Price:</label>
                                        <input type="text" name="product_wholesale_price" class="form-control product_wholesale_price" placeholder="0.00" value="{{$product_info->wholesale_price}}" />
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Product Category:</label>
                                        <input type="hidden" name="_productcategory" value="{{$product_info->category_id}}" />
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
                                        <input type="hidden" name="_productstatus" value="{{$product_info->product_status}}" />
                                        <select class="form-control product_status" name="product_status">
                                            <option value="1">Available</option>
                                            <option value="0">Out of stock</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Product Restock:</label>
                                        <input type="text" name="product_restock" class="form-control product_restock" placeholder="0"  value="{{$product_info->restock_count}}" />
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
                                        <textarea class="form-control product_description" name="product_description">{{$product_info->product_description}}</textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                  </div>
                </div>

    </div>
 
 <div class="row">
     
               <div class="col-md-6">
                <div class="box box-success">
                        <div class="box-header with-border">
                      <h3 class="box-title"><i class="fa fa-photo"></i> Product Image </h3>
                    </div>
                    <div class="box-body">
                            <div class="text-center">
                                @if($product_info->product_image!==null)
                                <img title="{{$product_info->product_name}}" alt="{{$product_info->product_name}}" src="{{url('/').'/'.$product_info->product_image}}" class="img-product">
                                @else
                                <img title="{{$product_info->product_name}}" alt="{{$product_info->product_name}}" src="{{url('/images/no-image.png')}}" class="img-product">
                                @endif
                            </div>        

                        <div class="text-center">
                            @php echo $barcode_string @endphp
                        </div>           
                    </div> 
                </div> 
          </div>


        <div class="col-md-6">
            <div class="box box-success">
                    <div class="box-header with-border">
                          <h3 class="box-title"><i class="fa fa-cloud-upload"></i> Update Product Image</h3>
                        </div>
                        <div class="box-body">
                          <p class="text-danger">
                              Warning: Uploading a new image will replace the existing image
                          </p>
                          <br>
                            <form
                              class="dropzone"
                              id="upload-product-image">
                              </form>
                              <button class="btn btn-primary btn-upload-product-img pull-right">
                                <i class="fa fa-cloud-upload"></i>
                                  Upload
                              </button>      

                        </div> 
                    </div>
        </div>

 </div>
    @endsection
