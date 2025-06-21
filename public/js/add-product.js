
		Dropzone.autoDiscover = false;

		toastr.options = {
		  "closeButton": false,
		  "debug": false,
		  "newestOnTop": false,
		  "progressBar": false,
		  "positionClass": "toast-top-right",
		  "preventDuplicates": false,
		  "onclick": null,
		  "showDuration": "300",
		  "hideDuration": "1000",
		  "timeOut": "5000",
		  "extendedTimeOut": "1000",
		  "showEasing": "swing",
		  "hideEasing": "linear",
		  "showMethod": "fadeIn",
		  "hideMethod": "fadeOut"
		}


		var dzimg_uploader = new Dropzone("#upload-product-image", {

		url: "/admin/product/upload-image",
        maxFilesize:20,	
        parallelUploads:1,
        addRemoveLinks: true,
        autoProcessQueue:false, 
        params:{
        	_token: $('meta[name="csrf-token"]').attr('content')
        },
        dictDefaultMessage: "Drag/Drop files here to upload",
        acceptedFiles:'image/*',
       	init: function() {
    		this.on("addedfile", function(file) {

			    if (this.files.length > 1) {
			      this.removeFile(this.files[0]);
			    }

    		});

    		this.on("removedfile", function(file) {
    		});

    		this.on("success", function(file){   

    			var res = JSON.parse(file.xhr.response);

    			$('input[name="_uploaded_img"]').val(res.image_file);

			});
			this.on("error", function(file) {
			  
			});
  		}

	});



$(document).on('click','.btn-upload-product-img',function(){

	if(dzimg_uploader.getQueuedFiles().length ==1){
		dzimg_uploader.processQueue();
	}else{
		 toastr["warning"]('Please select at least image to upload');
	}

});

 $(document).on('click','.btn-saveproduct',function(){

 		$.ajax({
 			url: '/admin/product/save',
 			type: 'POST',
 			data: $('.add-product-form').serialize(),
 			success:function(response){
 				
 				var res = JSON.parse(response);


 				if(res[0].has_errors=='yes'){

 				var dialog = bootbox.dialog({
 					title: '<i class="fa fa-exclamation-triangle"></i> Error',
 					message: ' '
 				});

 			

 				var error_template = '<ul style="list-style:none;color:red;">';

 				for(var i=0; i<res.length;i++){

 					error_template+='<li>'+res[i].product_barcode+'</li>';
 					error_template+='<li>'+res[i].product_name+'</li>';
 					error_template+='<li>'+res[i].product_price+'</li>';
 					error_template+='<li>'+res[i].product_category+'</li>';
 					error_template+='<li>'+res[i].product_qty+'</li>';
 					error_template+='<li>'+res[i].product_description+'</li>';
 					error_template+='<li>'+res[i].wholesale_price+'</li>';
 					error_template+='<li>'+res[i].product_restock+'</li>';

 				}

 				error_template+='</ul>';

 				dialog.contents().find('.bootbox-body').html(error_template);

 				}else{

 					window.location = '/admin/product/list';
 				}
 			}
 		});

 });


