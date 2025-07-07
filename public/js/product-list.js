$('.table-productlist').DataTable({
        dom: 'Bpftrip',
       "buttons": [{
               "extend": 'copy',
               "text": 'Copy',
               "titleAttr": 'Copy',                               
               "action": newexportaction
            },
            {
               "extend": 'excel',
               "text": 'Export as Excel',
               "titleAttr": 'Excel',                               
               "action": newexportaction
            },
            {
               "extend": 'csv',
               "text": 'Export as CSV',
               "titleAttr": 'CSV',                               
               "action": newexportaction
            },
            {
               "extend": 'pdf',
               "text": 'Export as PDF',
               "titleAttr": 'PDF',                               
               "action": newexportaction
            },
            {
               "extend": 'print',
               "text": 'Print',
               "titleAttr": 'Print',                                
               "action": newexportaction
            }],
        processing: true,
        serverSide: true,
        ajax: {
            url: '/admin/ajax/product-list', // Replace with your server endpoint
            type: 'POST',
            data:{
             _token: $(document).find('meta[name="csrf-token"]').attr('content')
            }
        },
        columns: [
            { data: 'product_code', title: 'Product Code' },
            { data: 'product_name', title: 'Product Name' },
            { data: 'stock', title: 'Stock' },
            { data: 'product_price', title: 'Product Price' },
            { data: 'supplier', title: 'Supplier' },
            { data: 'product_category', title: 'Product Category' },
            { data: 'product_status', title: 'Product Status' },
            { data: 'restock', title: 'Restock' },
            { data: 'product_wholesale_price', title: 'Product Wholesale Price' },
            { data: 'actions', title: 'Actions', orderable: false, searchable: false },
        ],
});

function newexportaction(e, dt, button, config) {
    var self = this;
    var oldStart = dt.settings()[0]._iDisplayStart;
    dt.one('preXhr', function (e, s, data) {
        // Just this once, load all data from the server...
        data.start = 0;
        data.length = 2147483647;
        dt.one('preDraw', function (e, settings) {
            // Call the original action function
            if (button[0].className.indexOf('buttons-copy') >= 0) {
                $.fn.dataTable.ext.buttons.copyHtml5.action.call(self, e, dt, button, config);
            } else if (button[0].className.indexOf('buttons-excel') >= 0) {
                $.fn.dataTable.ext.buttons.excelHtml5.available(dt, config) ?
                    $.fn.dataTable.ext.buttons.excelHtml5.action.call(self, e, dt, button, config) :
                    $.fn.dataTable.ext.buttons.excelFlash.action.call(self, e, dt, button, config);
            } else if (button[0].className.indexOf('buttons-csv') >= 0) {
                $.fn.dataTable.ext.buttons.csvHtml5.available(dt, config) ?
                    $.fn.dataTable.ext.buttons.csvHtml5.action.call(self, e, dt, button, config) :
                    $.fn.dataTable.ext.buttons.csvFlash.action.call(self, e, dt, button, config);
            } else if (button[0].className.indexOf('buttons-pdf') >= 0) {
                $.fn.dataTable.ext.buttons.pdfHtml5.available(dt, config) ?
                    $.fn.dataTable.ext.buttons.pdfHtml5.action.call(self, e, dt, button, config) :
                    $.fn.dataTable.ext.buttons.pdfFlash.action.call(self, e, dt, button, config);
            } else if (button[0].className.indexOf('buttons-print') >= 0) {
                $.fn.dataTable.ext.buttons.print.action(e, dt, button, config);
            }
            dt.one('preXhr', function (e, s, data) {
                // DataTables thinks the first item displayed is index 0, but we're not drawing that.
                // Set the property to what it was before exporting.
                settings._iDisplayStart = oldStart;
                data.start = oldStart;
            });
            // Reload the grid with the original page. Otherwise, API functions like table.cell(this) don't work properly.
            setTimeout(dt.ajax.reload, 0);
            // Prevent rendering of the full data to the DOM
            return false;
        });
    });
    // Requery the server with the new one-time export settings
    dt.ajax.reload();
};