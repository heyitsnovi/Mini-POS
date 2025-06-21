    <style>.helper-block{color:red;}</style>
    <form method="POST" class="update-product-category-form">
    	<input type="hidden" name="_token" value="{{ csrf_token() }}" />
        <input type="hidden" name="_ctid" value="{{$category->category_id}}" />
     
            <div class="form-group">
                <label>Category Name:</label>
                <input type="text" name="category_name" class="form-control category_name" value="{{$category->category_name}}" />
                <div class="helper-block categname-err"></div>
            </div>
        

        	<div class="form-group">
        		<label>Category Description</label>
        		<textarea class="form-control category_description" name="category_description">{{$category->category_description}}</textarea>
        		<div class="helper-block desc-error"></div>
        	</div>

		 
            <div class="form-group">
            	<button class="btn btn-success btn-md btn-update-product-category btn-block" type="button"><i class="fa fa-pencil"></i> Update Category</button>
            </div>
   
    </form>