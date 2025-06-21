<style>
	.coupon{
		font-weight: bold;
		font-size: 20px;
		text-align: center;
	}
</style>
<div class="form-group">
	<label>Enter Coupon Code</label>
	<input type="text" name="coupon" class="form-control coupon"/>
	<br>
	<button class="btn btn-primary btn-addcoupon btn-block"><i class="fa fa-tags"></i> Add Coupon</button>
</div>

<script>
	$('.btn-addcoupon').on('click',function(){

		$.ajax({
			url:'/admin/sales/submit-coupon',
			type:'POST',
			data:{
				_token: $("meta[name='csrf-token']").attr('content'),
				_coupon: $('.coupon').val()
			},
			success:function(response){
				var res = JSON.parse(response);
				bootbox.hideAll();
				window.cartItems();
				if(res.status==='1'){
					window.playBeepSound('beep.mp3');
					toastr["success"]("Coupon code has applied!");	
				}else{
					window.playBeepSound('popup.wav');
					toastr["error"](res.coupon_insert_status);
				}
				
			}
		})
	});
</script>