$('.table-productlist').DataTable( {
    dom: 'Bfrtip',
    buttons: [
   {
   	extend: 'print',
   	exportOptions:{
   		columns: [ 0, 1, 2, 3,4,5,6,7 ]
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
             columns: [ 0, 1, 2, 3,4,5,6,7 ]
            }
        },
        'colvis'
    ]
});