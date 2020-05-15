<?php
if (sizeof($transaccion) > 0) {
	foreach ($transaccion as $obj) { ?>
		<tr>
			<td><?php echo $obj[1]; ?></td>
			<td><?php echo $obj[2]; ?></td>
			<td>
				<div class="row form-check">
					<input class="form-check-input formula" type="radio" name="formula" id="sumar" value="1" checked>
					<label class="form-check-label" for="sumar">
						Sumar al precio del producto
					</label>
				</div>
				<div class="row form-check">
					<input class="form-check-input formula" type="radio" name="formula" id="restar" value="2">
					<label class="form-check-label" for="restar">
						Restar al precio del producto
					</label>
				</div>
			</td>
		</tr>
	<?php }
}else{ ?>
	<tr>
		<td colspan="3">No se encuentran datos disponibles</td>
	</tr>
<?php }


?>