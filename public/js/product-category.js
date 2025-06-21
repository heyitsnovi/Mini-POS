$('.table-categorylist').DataTable( {
    dom: 'Bfrtip',
    buttons: [
   {
   	extend: 'print',
   	exportOptions:{
   		columns: [ 0, 1, 2]
   	}
   },
        {
            extend: 'excelHtml5',
            exportOptions: {
                columns: ':visible'
            }
        },
        {
            extend: 'pdfHtml5',
            exportOptions: {
             columns: [ 0, 1, 2 ]
            }
        },
        'colvis'
    ]
});
$(document).on('click','.btn-add-product-category',function(){
 		$.ajax({
 			url:'/admin/product/save-category',
 			type:'POST',
 			data:$('.add-product-category-form').serialize(),
 			success:function(response){

 				
 				var res = JSON.parse(response);


 				if(res[0].has_errors=='yes'){

	 				$(document).find('.categname-err').html(res[0].category_name);
	 				$(document).find('.desc-error').html(res[0].category_description);

 				}else{

 					window.location = '/admin/product/category/new';
 				}

 			}
 		})
});

$('.btn-add-new-category').on('click',function(){
		$.ajax({
			url: '/admin/product/add-category',
			type:'POST',
			data:{
				_token:$('meta[name="csrf-token"]').attr('content')
			},
			success:function(response){
				box = bootbox.dialog({
					title: ' Add New Category',
					message: ' ',
					size:'medium',
					onEscape:function(){
				
					}
				});
				box.contents().find('.bootbox-body').html(response);
			}
		})
});

$(document).on('click','.edit-product-category',function(){
 
	var category_id = this.dataset.categoryid;
	 $.ajax({
	 	url:'/admin/product/edit-category',
	 	type:'POST',
	 	data:{
	 		_token:$('meta[name="csrf-token"]').attr('content'),
	 		_category:category_id
	 	},success:function(response){
	 				box = bootbox.dialog({
					title: ' Edit Category',
					message: ' ',
					size:'medium',
					onEscape:function(){
				
					}
				});
				box.contents().find('.bootbox-body').html(response);		
	 	}
	 })
});

$(document).on('click','.btn-update-product-category',function(){
	 
	 $.ajax({
	 	url:'/admin/product/save-edited-category',
	 	type:'POST',
	 	data:$('.update-product-category-form').serialize(),
	 	success:function(response){
				var res = JSON.parse(response);

				if(res[0].has_errors=='yes'){

 				$(document).find('.categname-err').html(res[0].category_name);
 				$(document).find('.desc-error').html(res[0].category_description);

				}else{
					bootbox.hideAll();
					setTimeout(function(){
						location.reload();
					},1500);
				}
	 	}
	 })
});