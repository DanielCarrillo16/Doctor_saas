<div class="row_col hide_<?= $id?>">
	<div class="row">
		<div class="form-group col-sm-4">
			<label class="control-label p-0" for="example-input-normal"><?php echo trans('drugs') ?> <span class="text-danger">*</span></label>
			<div class="d_flex">
				<select class="form-control select2" name="drugs[]" required>
					<option value=""><?php echo trans('select-drug') ?></option>
					<?php foreach ($drugs as $drug): ?>
						<option value="<?php echo html_escape($drug->id); ?>">
							<?php echo html_escape($drug->name); ?>
						</option>
					<?php endforeach ?>
				</select> 
			</div>
		</div>
	</div>
	<div class="row"> 
		<div class="form-group col-sm-12">
			<div class="d_flex_input">
				<select name="time_periods0[]" class="form-control" id="">
				<option value="">En la mañana</option>
				<option value="½ Cucharada en la mañana">½ Cucharada en la mañana</option>
				<option value="1 Cucharada en la mañana">1 Cucharada en la mañana</option>
				<option value="2 Cucharada en la mañana">2 Cucharada en la mañana</option>
				<option value="3 Cucharada en la mañana">3 Cucharada en la mañana</option>
				<option value="4 Cucharada en la mañana">4 Cucharada en la mañana</option>
				<option value="0.5 ml en la mañana">0.5 ml en la mañana</option>
				<option value="1 ml en la mañana">1 ml en la mañana</option>
				<option value="2 ml en la mañana">2 ml en la mañana</option>
				<option value="3 ml en la mañana">3 ml en la mañana</option>
				<option value="4 ml en la mañana">4 ml en la mañana</option>
				<option value="5 ml en la mañana">5 ml en la mañana</option>
				<option value="1 píldora/pastilla en la mañana">1 píldora/pastilla en la mañana</option>
				<option value="2 píldoras/pastillas en la mañana">2 píldoras/pastillas en la mañana</option>
				<option value="3 píldoras/pastillas en la mañana">3 píldoras/pastillas en la mañana</option>
				<option value="4 píldoras/pastillas en la mañana">4 píldoras/pastillas en la mañana</option>
				<option value="5 píldoras/pastillas en la mañana">5 píldoras/pastillas en la mañana</option>
				<option value="1 aplicación en la mañana">1 aplicación en la mañana</option>
				<option value="2 aplicaciones en la mañana">2 aplicaciones en la mañana</option>
				<option value="3 aplicaciones en la mañana">3 aplicaciones en la mañana</option>
				<option value="4 aplicaciones en la mañana">4 aplicaciones en la mañana</option>
				<option value="5 aplicaciones en la mañana">5 aplicaciones en la mañana</option>
				</select>

				<select name="time_periods0[]" class="form-control" id="">
				<option value="">A medio día</option>
				<option value="½ Cucharada a medio día">½ Cucharada a medio día</option>
				<option value="1 Cucharada a medio día">1 Cucharada a medio día</option>
				<option value="2 Cucharada a medio día">2 Cucharada a medio día</option>
				<option value="3 Cucharada a medio día">3 Cucharada a medio día</option>
				<option value="4 Cucharada a medio día">4 Cucharada a medio día</option>
				<option value="0.5 ml a medio día">0.5 ml a medio día</option>
				<option value="1 ml a medio día">1 ml a medio día</option>
				<option value="2 ml a medio día">2 ml a medio día</option>
				<option value="3 ml a medio día">3 ml a medio día</option>
				<option value="4 ml a medio día">4 ml a medio día</option>
				<option value="5 ml a medio día">5 ml a medio día</option>
				<option value="1 píldora/pastilla a medio día">1 píldora/pastilla a medio día</option>
				<option value="2 píldoras/pastillas a medio día">2 píldoras/pastillas a medio día</option>
				<option value="3 píldoras/pastillas a medio día">3 píldoras/pastillas a medio día</option>
				<option value="4 píldoras/pastillas a medio día">4 píldoras/pastillas a medio día</option>
				<option value="5 píldoras/pastillas a medio día">5 píldoras/pastillas a medio día</option>
				<option value="1 aplicación a medio día">1 aplicación a medio día</option>
				<option value="2 aplicaciones a medio día">2 aplicaciones a medio día</option>
				<option value="3 aplicaciones a medio día">3 aplicaciones a medio día</option>
				<option value="4 aplicaciones a medio día">4 aplicaciones a medio día</option>
				<option value="5 aplicaciones a medio día">5 aplicaciones a medio día</option>
				</select>

				<select name="time_periods0[]" class="form-control" id="">
				<option value="">En la tarde</option>
				<option value="½ Cucharada en la tarde">½ Cucharada en la tarde</option>
				<option value="1 Cucharada en la tarde">1 Cucharada en la tarde</option>
				<option value="2 Cucharada en la tarde">2 Cucharada en la tarde</option>
				<option value="3 Cucharada en la tarde">3 Cucharada en la tarde</option>
				<option value="4 Cucharada en la tarde">4 Cucharada en la tarde</option>
				<option value="0.5 ml en la tarde">0.5 ml en la tarde</option>
				<option value="1 ml en la tarde">1 ml en la tarde</option>
				<option value="2 ml en la tarde">2 ml en la tarde</option>
				<option value="3 ml en la tarde">3 ml en la tarde</option>
				<option value="4 ml en la tarde">4 ml en la tarde</option>
				<option value="5 ml en la tarde">5 ml en la tarde</option>
				<option value="1 píldora/pastilla en la tarde">1 píldora/pastilla en la tarde</option>
				<option value="2 píldoras/pastillas en la tarde">2 píldoras/pastillas en la tarde</option>
				<option value="3 píldoras/pastillas en la tarde">3 píldoras/pastillas en la tarde</option>
				<option value="4 píldoras/pastillas en la tarde">4 píldoras/pastillas en la tarde</option>
				<option value="5 píldoras/pastillas en la tarde">5 píldoras/pastillas en la tarde</option>
				<option value="1 aplicación en la tarde">1 aplicación en la tarde</option>
				<option value="2 aplicaciones en la tarde">2 aplicaciones en la tarde</option>
				<option value="3 aplicaciones en la tarde">3 aplicaciones en la tarde</option>
				<option value="4 aplicaciones en la tarde">4 aplicaciones en la tarde</option>
				<option value="5 aplicaciones en la tarde">5 aplicaciones en la tarde</option>
				</select>

				<select name="time_periods0[]" class="form-control" id="">
				<option value="">En la noche</option>
				<option value="½ Cucharada en la noche">½ Cucharada en la noche</option>
				<option value="1 Cucharada en la noche">1 Cucharada en la noche</option>
				<option value="2 Cucharada en la noche">2 Cucharada en la noche</option>
				<option value="3 Cucharada en la noche">3 Cucharada en la noche</option>
				<option value="4 Cucharada en la noche">4 Cucharada en la noche</option>
				<option value="0.5 ml en la noche">0.5 ml en la noche</option>
				<option value="1 ml en la noche">1 ml en la noche</option>
				<option value="2 ml en la noche">2 ml en la noche</option>
				<option value="3 ml en la noche">3 ml en la noche</option>
				<option value="4 ml en la noche">4 ml en la noche</option>
				<option value="5 ml en la noche">5 ml en la noche</option>
				<option value="1 píldora/pastilla en la noche">1 píldora/pastilla en la noche</option>
				<option value="2 píldoras/pastillas en la noche">2 píldoras/pastillas en la noche</option>
				<option value="3 píldoras/pastillas en la noche">3 píldoras/pastillas en la noche</option>
				<option value="4 píldoras/pastillas en la noche">4 píldoras/pastillas en la noche</option>
				<option value="5 píldoras/pastillas en la noche">5 píldoras/pastillas en la noche</option>
				<option value="1 aplicación en la noche">1 aplicación en la noche</option>
				<option value="2 aplicaciones en la noche">2 aplicaciones en la noche</option>
				<option value="3 aplicaciones en la noche">3 aplicaciones en la noche</option>
				<option value="4 aplicaciones en la noche">4 aplicaciones en la noche</option>
				<option value="5 aplicaciones en la noche">5 aplicaciones en la noche</option>
				</select>

			</div>
		</div>
	</div><!-- row -->

	<div class="row">
		<div class="form-group col-sm-4">
		<div class="d_flex">
			<select name="duration_text0[]" class="form-control" id="">
				<option value=""><?php echo trans('select') ?></option>
				<?php foreach (get_dates() as $dates): ?>
				<option value="<?php echo html_escape($dates); ?>"><?php echo html_escape($dates); ?> </option>
				<?php endforeach ?>
			</select>

			<select name="duration0[]" class="form-control" id="">
			<option value=""><?php echo trans('time') ?></option>
			<option value="Continuo"><?php echo trans('continue') ?> </option>
			<option value="Dias"><?php echo trans('days') ?> </option>
			<option value="Meses"><?php echo trans('months') ?></option>
			<option value="Años"><?php echo trans('years') ?> </option>
			</select>
		</div>
		</div>

		<div class="form-group col-sm-4">
		<select name="medicine_time0[]" class="form-control" id="">
			<option value=""><?php echo trans('beforeafter-meals') ?></option>
			<option value="After Meal"><?php echo trans('after-meal') ?></option>
			<option value="Before Meal"><?php echo trans('before-meal') ?> </option>
		</select>
		</div>

		<div class="form-group col-sm-4">
		<div class="d_flex">
			<input type="text" name="note0[]" class="form-control" placeholder="Nota">
		</div>
		</div>
	</div> <!-- row -->

	<div class="drug_details_increase_field_0"></div>
					<div class="input_fields_wrap"></div>


		<input type="hidden" name="appoinment_id" value="<?php echo html_escape($appoinment_id); ?>">


		<input type="hidden" name="id" value="0">
		<input type="hidden" name="total_item" class="total_item" value="1">
		<input type="hidden" name="follow_up" value="0">

		<!-- csrf token -->
		<input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">

				</div>
			</div><!-- row -->
	<div class="drug_details_increase_field_<?= $id;?>"></div>
</div>