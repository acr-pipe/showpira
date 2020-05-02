<?php
if (sizeof($transaccion) > 0) {
	foreach ($transaccion as $obj) {
		echo '<div class="card p-1 mb-2" style="border: none" id="'.$obj[0].'" align="center">
	            <input class="form-check-input mt-3 ml-1 ml-2 imgcupon" type="radio" name="cupon" id="e'.$obj[0].'">
	            <img src="'.$obj[4].'" class="imgcupon" id="i'.$obj[0].'" width="100%">
				<div class="card-footer p-2" id="f'.$obj[0].'">
					<section class="imgcupon">';
					if ($obj[8] == 1) {
						echo '<span class="badge badge-success">Publicado</span><br>';
					}
					echo '<small><b>Disponible desde:</b> '.$obj[5].'</small>
					<small><b>Disponible hasta:</b> '.$obj[6].'</small>
					<small class="text-muted">'.$obj[2].' | ₡ '.$obj[3].'</small>
					</section>';
					if ($obj[8] != 1) {
						echo '<button class="btn btn-primary btn-block btn-sm desactivateCupons" id="'.$obj[0].'">Desactivar</button>';
					}else{
						echo '<button class="btn btn-primary btn-block btn-sm revocarCupons" id="'.$obj[0].'">Revocar</button>';
					}

				echo '</div>
	          </div>';
	}
}else{ ?>
	<div align="center" class="p-1">
		No hay datos disponibles
	</div>
<?php } 
?>
<!-- <div class="card-header">
	<div class="card-body p-1" style="background: #F8FBFB">
		<small>'.$obj[2].' | ₡ '.$obj[3].'</small>
	</div>
</div> -->

