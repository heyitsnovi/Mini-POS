var selectedPaymentOpt = null;

$(document).on('click','input[name="transaction_type"]',function(){
		selectedPaymentOpt = $(this).val();
		if(selectedPaymentOpt ==='cash' || selectedPaymentOpt==='partial'){
			$('input[name="amt_paid"]').attr('disabled',false);
		}else{
			$('input[name="amt_paid"]').attr('disabled',true);
		}
});

$('.btn-save-transaction').on('click',function(){
		$.ajax({
			url: '/admin/sales/save-transaction',
			type: 'POST',
			data:{
				customer_name: 	$('.customer_name').val(),
	            customer_contact: $('.customer_contact').val(),
	            customer_address: $('.customer_address').val(),
	            transaction_type:   $('input[name="transaction_type"]:checked').val(),
	            transaction_notes:  $('.transaction_notes').val(),
	            or_number: 			 $('.or_number').val(),
	            amt_paid: 				 $('.amt_paid').val(),
	            _token: 				 $('meta[name="csrf-token"]').attr('content'),
			},success:function(response){
				var res  = JSON.parse(response);

				if(res[0].has_errors==='yes'){
						$('.error-customername').html(res[0].customer_name);
						$('.error-ornumber').html(res[0].or_number);
						$('.error-customercontact').html(res[0].customer_contact);
						$('.error-customeraddress').html(res[0].customer_address);
						$('.error-payment_type').html(res[0].transaction_type);
						$('.error-amountpaid').html(res[0].amt_paid);
						$('.error-ornumber').html(res[0].or_number);
					}else{
						$('.error-ornumber').html(res[0].or_number);
						$('.error-customername').html(res[0].customer_name);
						$('.error-ornumber').html(res[0].or_number);
						$('.error-customercontact').html(res[0].customer_contact);
						$('.error-customeraddress').html(res[0].customer_address);
						$('.error-payment_type').html(res[0].transaction_type);
						$('.error-amountpaid').html(res[0].amt_paid);	
						bootbox.hideAll();
						setTimeout(function(){
						 
							swal({
							    title: "Sucess!",
							    text: "Transaction Saved!",
							    type: "success"
							}).then(function() {
									PopupCenter(window.location.origin+'/admin/sales/print-transaction/code/'+res[0].tx_auto_id,'Transaction Details','900','500');
							});

							window.	playBeepSound('popup.wav');
							window.cartItems();
							 
						},1500);
				}
			}
		})
});

$('.amt_paid').on('keyup',function(){
	    var val = $(this).val();
	    if(isNaN(val)){
	         val = val.replace(/[^0-9\.]/g,'');
	         if(val.split('.').length>2) 
	             val =val.replace(/\.+$/,"");
	    }
	    $(this).val(val);

	    var change = (parseFloat($(this).val()) - parseFloat($('.amt-value').attr('data-amt')));
	   
	    if(!isNaN(change)){
	   			$('.amt-chng-val').html(' : ₱ '+change.toLocaleString('us', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
	   			$('.error-amountpaid').html('');
		} 
		if(change<0){
			$('.error-amountpaid').html('You must enter an amount greater than ₱ '+parseFloat($('.amt-value').attr('data-amt')).toLocaleString('us', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
			$('.amt-chng-val').html(' : ₱ 0.00');
		}
});

function PopupCenter(url, title, w, h) {
    // Fixes dual-screen position                         Most browsers      Firefox
    var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : screen.left;
    var dualScreenTop = window.screenTop != undefined ? window.screenTop : screen.top;
            
    width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
    height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;
            
    var left = ((width / 2) - (w / 2)) + dualScreenLeft;
    var top = ((height / 2) - (h / 2)) + dualScreenTop;
    var newWindow = window.open(url, title, 'scrollbars=yes, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);

    // Puts focus on the newWindow
    if (window.focus) {
        newWindow.focus();
    }
}
