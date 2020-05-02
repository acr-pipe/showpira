<?php 

$color = '';

if (sizeof($transaccion) > 0) {
	foreach ($transaccion as $obj) {
	if ($obj[16] == 1) {
	 	$color = 'success';
	}else if ($obj[16] == 2) {
		$color = 'warning';
	}else if ($obj[16] == 3) {
		$color = 'primary';
	}else if ($obj[16] == 6) {
		$color = 'danger';
	}else{
		$color = 'info';
	}
		echo '<tr>
				<td><input type="checkbox" class="rdItem"></td>
				<td>';
          if ($obj[2] == 1){ echo '<span class="text-primary">•</span>'; }
          elseif($obj[2] == 2){ echo '<span class="text-dark">•</span>'; }
          else{ echo '<span class="text-warning">•</span>'; }

          echo '&nbsp;<a href="#" class="detailOrd" id="o'.$obj[0].'" data-toggle="modal" data-target="#modal-order"'.
				'fecha="'.$obj[4].'" isexpress="'.$obj[2].'">ORD-#'.$obj[18].'</a></td>
				<td>'.$obj[6].'</td>
				<td>'.$obj[3].'</td>
				<td>'.$obj[15].'</td>
				<td><span class="badge badge-'.$color.'">'.$obj[17].'</span></td>
			</tr>';
	}
}else{ ?>
	<tr>
		<td colspan="6" class="text-center">No hay datos disponibles</td>
	</tr>
<?php } ?>