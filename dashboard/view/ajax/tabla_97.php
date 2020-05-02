<?php
if (sizeof($transaccion) > 0) {
	foreach ($transaccion as $obj) {
		echo '<div class="col-md-3">
                <div class="card p-1 mb-2" style="border: none" id="'.$obj[0].'" align="center">
                    <img src="'.$obj[4].'" id="i'.$obj[0].'" width="100%">
                  <div class="card-footer p-2" id="f'.$obj[0].'">';
                      if ($obj[7] == 0) {
                        echo '<span class="badge badge-secondary">Desactivado</span><br>';
                      }
                      echo '<small><b>Disponible desde:</b> '.$obj[5].'</small>
                      <small><b>Disponible hasta:</b> '.$obj[6].'</small>
                      <small class="text-muted">'.$obj[2].' | ₡ '.$obj[3].'</small>
                  <div class="row">
                    <div class="col">
                      <button class="btn btn-primary btn-sm btn-block activateCupon" estado="'.$obj[7].'" id="'.$obj[0].'">Activar</button>
                    </div>
                    <div class="col">
                      <button class="btn btn-danger btn-sm btn-block del" id="'.$obj[0].'">Eliminar</button>
                    </div>
                  </div>
                  </div>
                </div>
              </div>';
	}
}else{ ?>
  <div class="col p-2" align="center">
    No hay datos disponibles
  </div>
<?php } 
?>