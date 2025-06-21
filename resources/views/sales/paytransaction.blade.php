<style type="text/css">
	.helper{
		color:red;
	}
	.amt-pybl,.amt-chng{
		    font-weight: bold;
    		font-size: 20px;
	}

	.amt-value,.amt-chng-val{
		 font-weight: bold;
    	 font-size: 20px;
	}
	.payment-type{
		display: none;
	}
</style>
<div class="row">

	<div class="col-md-6">
		<div class="form-group">
			<label>OR Number:</label>
			<input type="text" name="or_number" class="form-control or_number" />
			<div class="helper error-ornumber"></div>
		</div>
	</div>

	<div class="col-md-6">
		<div class="form-group">
			<label>Customer Name:</label>
			<input type="text" name="customer_name" class="form-control customer_name" />
			<div class="helper error-customername"></div>
		</div>
	</div>

	<div class="col-md-6">
		<div class="form-group">
			<label>Customer Contact #:</label>
			<input type="text" name="customer_contact" class="form-control customer_contact" />
			<div class="helper error-customercontact"></div>
		</div>
	</div>
	
	<div class="col-md-6">
		<div class="form-group">
			<label>Customer Address:</label>
			<input type="text" name="customer_address" class="form-control customer_address" />
			<div class="helper error-customeraddress"></div>
		</div>
	</div>


	<div class="col-md-3 payment-type">
		<div class="form-group">
			<label>				
				<input type="radio" name="transaction_type"  checked=""  value="cash" />
				Cash Payment
			</label>
		</div>
	</div>

	<div class="col-md-3 payment-type">
		<div class="form-group">
			<label>				
				<input type="radio" name="transaction_type" value="cod" />
				Cash On Delivery
			</label>
		</div>
	</div>

	<div class="col-md-3 payment-type">
		<div class="form-group">
			<label>				
				<input type="radio" name="transaction_type" value="credit" />
				Credit
			</label>
		</div>
	</div>

	<div class="col-md-3 payment-type">
		<div class="form-group">
			<label>				
				<input type="radio" name="transaction_type" value="partial" />
				Partial Payment
			</label>
		</div>
	</div>

	<div class="col-md-6">
		<div class="form-group">
			<label>Enter Amount Paid:</label>
			<input type="text" name="amt_paid" class="form-control amt_paid"  />
			<div class="helper error-amountpaid"></div>
		</div>
	</div>

	<div class="col-md-6">
		<div class="form-group">
	 		<label class="amt-pybl">Amount Payable :</label>
		<span class="amt-value" data-amt="{{$amount_payable}}">₱ {{number_format($amount_payable,2)}}</span>
		<br>
		<label class="amt-chng">Change </label>
		<span class="amt-chng-val">₱ 0.00</span>
		</div>
	</div>

	<div class="col-md-12">
		<div class="form-group">
			<label>Notes: (Optional)</label>
			<textarea class="form-control transaction_notes" name="transaction_notes"></textarea>
		</div>
	</div>

</div>

 

<div class="row">
	<div class="col-md-12">
		<div class="form-group">
		<button class="btn btn-primary btn-md btn-save-transaction"><i class="fa fa-save"></i> Save Transaction</button>
	</div>
	</div>
</div>

<script src="{{url('js/pay.js')}}"></script>