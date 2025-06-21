    <style>.helper-block{color:red;}</style>
    <form method="POST" class="add-product-category-form">
    	<input type="hidden" name="_token" value="{{ csrf_token() }}" />

 
            <div class="form-group">
                <label>Category Name:</label>
                <input type="text" name="category_name" class="form-control category_name" />
                <div class="helper-block categname-err"></div>
            </div>
        

        	<div class="form-group">
        		<label>Category Description</label>
        		<textarea class="form-control category_description" name="category_description"></textarea>
        		<div class="helper-block desc-error"></div>
        	</div>

		 
            <div class="form-group">
            	<button class="btn btn-success btn-md btn-add-product-category btn-block" type="button"><i class="fa fa-plus"></i> Add Category</button>
            </div>
   
    </form>