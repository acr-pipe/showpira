<?php 

	if (sizeof($transaccion) > 0) {
		
		foreach ($transaccion as $obj) {
			echo '<li class="list-group-item d-flex">
                  <div class="col col-sm-1">
                      <input class="rdDeliver" type="radio" name="deliver" id="'.$obj[8].'">
                  </div>
                  <div class="col col-sm-1">
                      <label data-feather="truck"></label>
                  </div>
                  <div class="col col-sm-10" align="left">
                      <label for="'.$obj[8].'">'.$obj[1].'     <small class="text-muted">('.$obj[7].')</small></label>
                  </div>
                </li>';
		}

	}else{ ?>
    <li class="list-group-item d-flex">
        <div class="col col-sm-12">
            No hay datos disponibles
        </div>
    </li>
  <?php }

 ?>