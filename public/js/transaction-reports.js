$(document).ready(function(){

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

	let totalSales = '0.00';
	
	let printedBy = '';

	let customer_sales_report_tbl = $('.tbl-customer-salesresult').DataTable({

     dom: 'Bpftrip',
       "buttons": [{
               "extend": 'copy',
               "text": 'Copy',
               "titleAttr": 'Copy', 
               "title": '',                              
               "action": newexportaction,
                 "exportOptions":{
       				columns: [ 0, 1, 2, 3, 4 ]
       			}
            },
            {
               "extend": 'excel',
               "title": '',
               "text": 'Export as Excel',
               "titleAttr": 'Excel',                               
               "action": newexportaction,
                 "exportOptions":{
       				columns: [ 0, 1, 2, 3, 4 ]
       			}
            },
            {
               "extend": 'csv',
               "title": '',
               "text": 'Export as CSV',
               "titleAttr": 'CSV',                               
               "action": newexportaction,
                "exportOptions":{
       				columns: [ 0, 1, 2, 3, 4 ]
       			}
            },
            {
               "extend": 'pdf',
               "text": 'Export as PDF',
               "title": '',
               "titleAttr": 'PDF',                               
               "action": newexportaction,
                 "exportOptions":{
       				columns: [ 0, 1, 2, 3, 4 ]
       			},
				customize: function (doc) {
				    let start = $('.start_report_date').val();
				    let end = $('.end_report_date').val();

				    function formatDate(dateStr) {
				        let date = new Date(dateStr);
				        return date.toLocaleDateString('en-US', {
				            year: 'numeric',
				            month: 'long',
				            day: 'numeric'
				        });
				    }

				    let displayStart = start ? formatDate(start) : 'Beginning';
				    let displayEnd = end ? formatDate(end) : 'Current Date';

				    // Reduce page margins to widen table space
				    doc.pageMargins = [20, 20, 20, 40]; // [left, top, right, bottom]

				    // Make table content wider
				    var table = doc.content.find(n => n.table);
				    if (table && table.table && table.table.widths) {
				        // Set all column widths to auto or * to stretch proportionally
				        table.table.widths = Array(table.table.body[0].length).fill('*');
				    }

				    // Add header
				    doc.content.splice(0, 0, {
				        margin: [0, 0, 0, 12],
				        alignment: 'center',
				        stack: [
				            { text: 'Sales Report', style: 'header', fontSize: 16, bold: true },
				            { text: `From: ${displayStart} To: ${displayEnd}` }
				        ]
				    });

				    // Add footer
				    doc.content.push({
				        margin: [0, 30, 0, 0],
				        alignment: 'center',
				        stack: [
				            { text: `Total Sales: ₱${totalSales}`, bold: true, margin: [0, 5, 0, 0] },
				            { text: `Printed by: ${printedBy}` },
				            { text: `Printed on: ${new Date().toLocaleString()}` }
				        ]
				    });

				    // Style tweaks
				    doc.styles.tableHeader.alignment = 'left';
				    doc.styles.title = {
				        alignment: 'center',
				        fontSize: 14,
				        bold: true
				    };
				}
            },
            {
               "extend": 'print',
               "text": 'Print',
               "titleAttr": 'Print',                                
               "action": newexportaction,
                "title": '',
                "exportOptions":{
       				columns: [ 0, 1, 2, 3, 4 ]
       			},
       			customize: function (win) {

					    let start = $('.start_report_date').val();
					    let end = $('.end_report_date').val();

					    function formatDate(dateStr) {
					        let date = new Date(dateStr);
					        return date.toLocaleDateString('en-US', {
					            year: 'numeric',
					            month: 'long',
					            day: 'numeric'
					        });
					    }

					    let displayStart = start ? formatDate(start) : 'Beginning';
					    let displayEnd = end ? formatDate(end) : 'Current Date';

					    $(win.document.body).prepend(`
					        <div style="text-align: center; margin-bottom: 20px;">
					            <h2>Customer Sales Report</h2>
					            <p>From: ${displayStart} To: ${displayEnd}</p>
					          
					        </div>
					    `);


				        // Optional: style the table
				        $(win.document.body).find('table')
				            .addClass('compact')
				            .css('font-size', '12px');

				        // Optional: add a footer
				        $(win.document.body)
				            .append(`
				            	<div style="text-align: right; margin-top: 20px;">  <p><strong>Total Sales: ₱${totalSales}</strong></p> </div>
				                <div style="text-align: center; margin-top: 30px;">
				                    <p>Printed by: ${printedBy}</p>
				                    <p>Printed on: ${new Date().toLocaleString()}</p>
				                </div>
				            `);
				}
            }],
        processing: true,
        serverSide: true,
        ajax: {
            url: '/admin/sales/filter-customer-transaction-dates', // Replace with your server endpoint
            type: 'POST',
		    data: function(d) {

		        let startDate = $('.start_report_date').val();
		        let endDate = $('.end_report_date').val();

		        // If both dates are empty
		        if (!startDate && !endDate) {
		            startDate = '__USE_EARLIEST__';
		            endDate = new Date().toISOString().split('T')[0];
		        }

		        d.start_date = startDate;
		        d.end_date = endDate;
		        d._token = $('meta[name="csrf-token"]').attr('content');
		    }
        },
        columns: [
         
            { data: 'assigned_or', title: 'OR Number' },
            { data: 'date_sold', title: 'Transaction Date' },
            { data: 'customer_info', title: 'Customer Name' },
            { data: 'payment_type', title: 'Payment Type' },
            { data: 'amount_paid', title: 'Amount Paid' },
            { data: 'actions', title: ' ' },
            
        ],
 });


$('.tbl-customer-salesresult').on('xhr.dt', function (e, settings, json, xhr) {
    totalSales = json.total_sales ?? '0.00';
    printedBy  = json.current_username ?? 'Admin';
});

	$('.start_report_date').datepicker({
		dateFormat:'yy-mm-dd'
	});

	$('.end_report_date').datepicker({
		dateFormat:'yy-mm-dd'
	});
	 

	$(document).on('click','.btn-clear-reports-filter',function(){

			location.reload();
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
						size:'large'
					});
					box.contents().find('.bootbox-body').html(response);
				}
			})

	 });


	$('.btn-show-transactions-reports').on('click',function(){
	 		
	 	customer_sales_report_tbl.ajax.reload(function(json) {
	         toastr["success"]("Reports has been generated");
	    });

	});


	$(document).on('click','.btn-cancel-sales',function(){

			
	});


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