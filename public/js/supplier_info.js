$('.tbl-supplier-purchases').DataTable( {
        dom: 'Bfrtip',
         "order": [[ 0, "asc" ]],
        buttons: [
       {
       	extend: 'print',
       	exportOptions:{
       		columns: [ 0, 1, 2 ]
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
                    columns: [ 0, 1, 2]
                }
            },
            'colvis'
        ]
    });