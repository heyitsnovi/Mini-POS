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

$('.tbl-salesresult').DataTable( {
        dom: 'Bfrtip',
         "order": [[ 2, "desc" ]],
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

$('.btn-show-reports').on('click',function(){
		$.ajax({
			url: '/admin/sales/filter-transaction-dates',
			type:'POST',
			data:{
				start_date:  $('.start_report_date').val(),
				end_date:   $('.end_report_date').val(),
				_token: $(document).find('meta[name="csrf-token"]').attr('content')
			},success:function(response){
				 
				 var res =  response;
				 var tpl = '';
				 var totalSales = 0;

				 for(var i=0; i<res.results.length;i++){

				 			totalSales+=(res.results[i].product_qty_ordered * res.results[i].product_price);

	         				 tpl +='<tr>';
         					 tpl +='<td>'+res.results[i].product_code+'</td>';
         					 tpl +='<td>'+res.results[i].transaction_or_number+'</td>';
         					 tpl +='<td>'+res.results[i].transaction_date+'</td>';
         					 tpl +='<td>'+res.results[i].product_name+'</td>';
         					 tpl +='<td>'+res.results[i].product_qty_ordered+'</td>';
         					 tpl+='<td>'+res.results[i].product_price+'</td>';
         					 tpl+='<td>'+(res.results[i].product_qty_ordered * res.results[i].product_price)+'</td>';
	         				 tpl +='</tr>';
				 }

				$('.tbl-salesresult').DataTable().destroy();
				$('.tbody-results-filter').empty();
				$('.tbody-results-filter').html(tpl);
				$('.tbl-salesresult').DataTable( {
				        dom: 'Bfrtip',
				        "order": [[ 2, "desc" ]],
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
				$('.total-sales').html(totalSales.toLocaleString('us', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
				

				if(res.results.length > 0){
					toastr["success"]("Reports has been generated");
				}else{
					toastr["error"]("No reports based on selected dates");
				}
			}
		})
});
