<div class="form-group">
	<label>New Quantity:</label>


		<div class="input-group">
          <span class="input-group-btn">
              <button type="button" class="btn btn-default btn-danger" disabled="disabled" data-type="minus" data-field="quant[1]">
                  <span class="glyphicon glyphicon-minus"></span>
              </button>
          </span>
          <input style="text-align: center;" type="text" name="quant[1]" class="form-control input-number" value="<?php echo $data[2]; ?>" min="1" max="<?php echo $data[0]; ?>">
          <span class="input-group-btn">
              <button type="button" class="btn btn-success btn-number" data-type="plus" data-field="quant[1]">
                  <span class="glyphicon glyphicon-plus"></span>
              </button>
          </span>
      </div>

	<br>
	<button data-productid="<?php echo $data[1]; ?>" class="btn btn-primary btn-block btn-upqty-modal"><i class="fa fa-pencil"></i> Update Quantity</button>
</div>
<script src="{{url('js/qtyticker.js')}}"></script>