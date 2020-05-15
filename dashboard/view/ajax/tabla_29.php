<?php
if (sizeof($transaccion) > 0) {
	foreach ($transaccion as $obj) {
		echo '<tr id="'.$obj[0].'">
				<td><input class="form-check-input mt-3 ml-1 rdItem" type="radio" name="product" id="e'.$obj[0].'"></td>
				<td><label for="e'.$obj[0].'"><img src="'.$obj[4].'" class="avatar"></label></td>
				<th scope="row"><label for="e'.$obj[0].'">'.$obj[1].'<label></th>
				<td><span class="text-muted">'.$obj[2].'</span></td>
				<td><span class="text-muted">₡ '.$obj[3].'</span></td>
			</tr>';
	}
}else{ ?>
	<tr>
		<td colspan="5">No hay datos disponibles</td>
	</tr>
<?php } 
?>