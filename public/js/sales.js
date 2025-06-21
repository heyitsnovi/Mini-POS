	cartItems();
	enableCancelSalesBtn();
	autofocus_barcodefield();

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
	$('body').addClass('sidebar-collapse');


	$('.btn-sales-coupon-add').on('click',function(){
		showAddCouponModal();
	});

	$('.barcode-item').on('change',function(){
		
		if($(this).val()!==''){
			add_to_cart($('.barcode-item').val());
			playBeepSound('beep.wav');
		}
	});

	$('.btn-open-shop-inventory').on('click',function(){
		playBeepSound('popup.wav');
	});

	$(document).on('click','.btn-edit-item',function(){
		updateProductQty(this);
	});

	$(document).on('click','.btn-purge-coupon',function(){
		if(confirm('Are you sure you want to remove this coupon?')){
			purgeCoupon();
		}else{
			return false;
		}
	});

	$('.btn-cancel-sales').on('click',function(){
			playBeepSound('cancel.wav');
			swal({
			  title: "Are you sure?",
			  text: "Do you want to null or void this current transaction?",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
			  	cancelSales();
			    swal("Sales has been voided!", {
			      icon: "success",
			    });
			  } else {
			   
			  }
			});
	});


	$(document).on('click','.btn-delete-item-pos',function(){

			var thisobj = this;

			playBeepSound('cancel.wav');
			
			swal({
			  title: "Are you sure?",
			  text: "Do you want to remove this item?",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
			  	console.log(thisobj);
			  	deleteCartItem(thisobj.dataset.itemid);

			  } else {
			  }
			});
	});

	$(document).on('click','.btn-add-payment',function(){
			payTransaction();
	});

 	$('.searchItem').autoComplete({
					resolver: 'custom',
					minLength:1,
					formatResult: function (item) {
						return {
							value: item.id,
							text: item.itemcode,
							html: [ 
									$('<img>').attr('src', window.location.origin+'/'+item.icon).css("height", 40), '  ',
									item.text 
								] 
						};
					},
					events: {
						search: function (qry, callback) {
							// let's do a custom ajax call
							$.ajax(
								'/admin/sales/products-json-items',
								{
									data: {
									 'qry': qry,
									 _token: $("meta[name='csrf-token']").attr('content')
									},
									type:'POST'
								}
							).done(function (res) {
							
								callback(res.results)
							});
						}
					}
				});

 	$('.searchItem').on('autocomplete.select',function(evt,item){

		if(item.itemcode!==''){
			add_to_cart(item.itemcode);
			playBeepSound('beep.wav');
			$('.searchItem').val('');
		}
 	});
function add_to_cart(code){
	$.ajax({
		url:'/admin/sales/pos',
		type:'POST',
		data:{
			product_code:code,
			_token: $("meta[name='csrf-token']").attr('content')
		},
		success:function(response){
			if(response) {
			    try {
					var r= JSON.parse(response);
					if(r.status===1){
					toastr["success"]("Item has been added");
					cartItems();
					}else if(r.status==2){
						playBeepSound('cancel.wav');
						toastr["warning"]("Unable to add item. Item out of stock");
						cartItems();
					}
					
			    } catch(e) {
			        alert(e);
			    }
			}else{
				playBeepSound('cancel.wav');
				 toastr["error"]("Item Not Found or Out of stock.");
				 $('.barcode-item').val('');
			}
		}
	})
}


function cancelSales(){

		$.ajax({
			url: '/admin/sales/clear-sales',
			type: 'POST',
			data:{_token: $("meta[name='csrf-token']").attr('content')},
			success:function(response){
				cartItems();
				swal("Sucess", "Sale Cancelled", "success");
				$('.coupon-code-name').html('');
				 
			}
		})

}


function cartItems(){

	$.ajax({
		url:'/admin/sales/cart-items',
		type:'POST',
		data:{
			_token: $("meta[name='csrf-token']").attr('content')
		},
		success:function(res){
		 
				var t = JSON.parse(res);
				var tpl = '';


				for(var x=0; x<=Object.keys(t.cart_items).length;x++){


					if(typeof Object.values(t.cart_items)[x]!=='undefined'){
 
					 	tpl+='<tr class="tbl-pos-cart-item">';
					 	tpl+='<td>'+Object.values(t.cart_items)[x].id+'</td>';
					 	tpl+='<td>'+Object.values(t.cart_items)[x].name+'</td>';
					 	tpl+='<td>'+Object.values(t.cart_items)[x].price.toFixed(2)+'</td>';
					 	tpl+='<td>'+Object.values(t.cart_items)[x].quantity+'</td>';
					 	tpl+='<td>'+parseFloat(Object.values(t.cart_items)[x].quantity*Object.values(t.cart_items)[x].price).toFixed(2)+'</td>';
					 	tpl+='<td><a data-itemid="'+Object.values(t.cart_items)[x].id+'" class="btn-sm btn btn-primary btn-edit-item"><i class="fa fa-edit"></i></a> <a class="btn-sm btn btn-danger btn-delete-item-pos" data-itemid="'+Object.values(t.cart_items)[x].id+'"><i class="fa fa-trash"></i></a></td>';
					 	tpl+='</tr>';
					}

					$('.cart-items-table').html(tpl);
					$('.amt-payable').html('&nbsp; ₱ '+t.total_payable);

					if(t.coupon_code!==null){
						
						$('.coupon-code-name').html('&nbsp; '+t.coupon_code.name+'&nbsp; &nbsp; <button class="btn btn-sm btn-danger btn-purge-coupon"><i class="fa fa-trash"></i> Remove Coupon</button>');
						$('.coupon-code-value').html('&nbsp; '+t.coupon_code.value+' pesos');
					}
					
					$('.barcode-item').val('');
					$('.item-count').html(Object.keys(t.cart_items).length);
				}
		}
	});

}

function playBeepSound(soundname){
		var audio = new Audio(window.location.origin+'/sound/'+soundname);
		audio.play();
}

function enableCancelSalesBtn(){

	setInterval(function(){
		if($('.tbl-pos-cart-item').length>0){

			$('.btn-cancel-sales').attr('disabled',false);
			$('.btn-sales-coupon-add').attr('disabled',false);
			$('.btn-add-payment').attr('disabled',false);
			$('.btn-discount').attr('disabled',false);

		}else{
			$('.btn-cancel-sales').attr('disabled',true);
			$('.btn-sales-coupon-add').attr('disabled',true);
			$('.btn-add-payment').attr('disabled',true);
			$('.btn-discount').attr('disabled',true);
			
		}
	},1000);
}

function updateProductQty(obj){

	$.ajax({
		url: '/admin/sales/update-cart-item',
		type: 'POST',
		data:{
			_token: $("meta[name='csrf-token']").attr('content'),
			_itemcode: obj.dataset.itemid
		},
		success:function(response){

				var boxupdate = bootbox.dialog({
					title: 'Update Item Quantity',
					size: 'small',
					message:' '
				});
			boxupdate.contents().find('.bootbox-body').html(response);
		}
	})
}

function deleteCartItem(item_id){

    $.ajax({
	    	url: '/admin/sales/remove-cart-item',
	    	type: 'POST',
	    	data:{
	    		cart_item_id: item_id,
	    		_token: $("meta[name='csrf-token']").attr('content')
	    	},success:function(response){
	    		swal("Item has been removed", {
				      icon: "success",
				    });
	    		 cartItems();
	    	}
	    });
}

function showAddCouponModal(){
	playBeepSound('popup.wav');
		$.ajax({
			url: '/admin/sales/add-coupon',
			type:'POST',
			data:{
				_token: $("meta[name='csrf-token']").attr('content')
			},success:function(response){
				var couponbox = bootbox.dialog({
					title: ' Add Coupon',
					message:' ',
					size:'small',
					onEscape:function(){

					}
				});
				couponbox.contents().find('.bootbox-body').html(response);
			}
		})
}


function purgeCoupon(){

	playBeepSound('popup.wav');

		$.ajax({
			url: '/admin/sales/purge-coupon',
			type:'POST',
			data:{
				_token: $("meta[name='csrf-token']").attr('content')
			},success:function(response){

				swal("Sucess", "Coupon Code Removed", "success");
				$('.coupon-code-name').html('');
				$('.coupon-code-value').html('');
			 	cartItems();
			}
		});
}


function payTransaction(){
	$.ajax({
		url: '/admin/sales/add-payment',
		type: 'POST',
		data:{
			_token: $("meta[name='csrf-token']").attr('content')
		},
		success:function(response){
			var paymentbox = bootbox.dialog({
				title: '<i class="fa fa-money"></i> Pay Transaction',
				message:' ',
				size:'large',
				onEscape:function(z){
					console.log(z);
				}
			});
			paymentbox.contents().find('.bootbox-body').html(response);
		}
	})
}

function autofocus_barcodefield(){

	setInterval(function(){
		if($(document).find('.bootbox-body').length > 0 || $('.searchItem').is(":focus")){
		}else{
			$('.barcode-item').focus();
		}
	},1000);
}

//Shortcut Keys!
shortcut.add("F6",function() {

});

shortcut.add("F7",function() {
	  if($('.tbl-pos-cart-item').length>0){
		payTransaction();
	}
});

shortcut.add("F8",function() {
	
});


shortcut.add("F9",function() {
	
	  if($('.tbl-pos-cart-item').length>0){
		showAddCouponModal();
	}
});

shortcut.add("F10",function() {

  if($('.tbl-pos-cart-item').length>0){
		$('.btn-cancel-sales').click();
	}
	
});
