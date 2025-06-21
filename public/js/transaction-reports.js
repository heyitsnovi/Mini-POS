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

$('.tbl-customer-salesresult').DataTable( {
        dom: 'Bfrtip',
        "order": [[ 1, "desc" ]],
        buttons: [
       {
       	extend: 'print',
       	exportOptions:{
       		columns: [ 0, 1, 2, 3 ]
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
                    columns: [ 0, 1, 2, 3 ]
                }
            },
            'colvis'
        ]
    });

$('.start_report_date').datepicker({
	dateFormat:'yy-mm-dd'
});

$('.end_report_date').datepicker({
	dateFormat:'yy-mm-dd'
});
 

$(document).on('click','.btn-view-transaction',function(){
		
		var or_code = this.dataset.ornumber;

		$.ajax({
			url: '/admin/sales/view-transactions',
			type:'POST',
			data:{
				_token: $(document).find('meta[name="csrf-token"]').attr('content'),
				ornumber: or_code
			},success:function(response){
				var box = bootbox.dialog({
					title: 'Customer Transactions',
					message:' ',
					size:'medium'
				});
				box.contents().find('.bootbox-body').html(response);
			}
		})

 });


$('.btn-show-transactions-reports').on('click',function(){
		$.ajax({
			url: '/admin/sales/filter-customer-transaction-dates',
			type:'POST',
			data:{
				start_date:  $('.start_report_date').val(),
				end_date:   $('.end_report_date').val(),
				_token: $(document).find('meta[name="csrf-token"]').attr('content')
			},success:function(response){
				 var res = JSON.parse(response);
				 var tpl = '';
				 var totalSales = 0;

				 for(var i=0; i<res.results.length;i++){

	         				 tpl +='<tr>';
         					 tpl +='<td>'+res.results[i].transaction_or_number+'</td>';
         					 tpl +='<td>'+res.results[i].transaction_date+'</td>';
         					 tpl +='<td>'+res.results[i].customer_info+'</td>';
         					 tpl +='<td>'+res.results[i].payment_type+'</td>';
         					 tpl +='<td><a class="btn btn-success btn-sm btn-view-transaction" data-ornumber="'+res.results[i].transaction_or_number+'"><i class="fa fa-eye"></i> View</a></td>';
	         				 tpl +='</tr>';
				 }

				$('.tbl-customer-salesresult').DataTable().destroy();
				$('.tbody-transactions-results-filter').empty();
				$('.tbody-transactions-results-filter').html(tpl);
				$('.tbl-customer-salesresult').DataTable( {
			        dom: 'Bfrtip',
			        "order": [[ 2, "desc" ]],
			        buttons: [
			            'print'
			        ]
			    } );
 

				if(res.results.length > 0){
					toastr["success"]("Reports has been generated");
				}else{
					toastr["error"]("No reports based on selected dates");
				}
			}
		})
});