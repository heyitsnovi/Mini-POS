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

$('.tbl-db-backupfiles').DataTable();

$(document).on('click','.btn-generate-db-backup',function(){
	$.ajax({
		url:'/admin/utils/generate-db-backup',
		type:'POST',
		data:{
			_token: $('meta[name="csrf-token"]').attr('content')
		},success:function(response){
			var res = JSON.parse(response);
			if(res.status==='OK'){
				toastr['success']('Databse BackUp Successfully Created');
				setTimeout(function(){
						location.reload();
				},1500);
			}
		}
	})
});