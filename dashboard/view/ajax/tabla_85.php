<?php
if (sizeof($transaccion) > 0) {
  foreach ($transaccion as $obj) {
    echo '<li id="li'.$obj[2].'" class="list-group-item d-flex justify-content-between align-items-center listprod">
          <div class="col-sm-7">
            <img src="https://food.pipecr.com/assets/imgs/'.$obj[4].'" alt="Avatar" class="imgprod">
            <span class="ml-2">'.$obj[5].'</span>
          </div>
          <div class="input-group input-group-sm col-sm-4">
            <div class="input-group-append rest" id="r'.$obj[2].'" prod="'.$obj[2].'">
              <span class="input-group-text bg-light">
                <span data-feather="minus"></span>
              </span>
            </div>
            <input type="text" class="form-control text-center cantprod" value="'.$obj[3].'" id="c'.$obj[2].'">
            <div class="input-group-prepend sum" id="s'.$obj[2].'" prod="'.$obj[2].'">
              <span class="input-group-text bg-light">
                <span data-feather="plus"></span>
              </span>
            </div>
          </div>
          <span data-feather="x-circle" class="pointer delprod" style="color: #FC3F46" vid="'.$obj[0].'" id="d'.$obj[2].'">x</span>
        </li>';
  }
}else{ ?>
  <div align="center" class="p-1">
    No hay datos disponibles
  </div>
<?php } 
?>