<?php
if (sizeof($transaccion) > 0) {
    foreach ($transaccion as $obj) {
        echo '<a class="list-group-item d-flex justify-content-between align-items-center tprod" id="a'.$obj[0].'">
                    '.$obj[1].'
                    <span data-feather="x-circle" class="pointer deltipo" style="color: #FC3F46" id="d'.$obj[0].'"></span>
                </a>';
    }
}else{ ?>
    <a class="list-group-item d-flex justify-content-between align-items-center">
        No hay datos disponibles
    </a>
<?php } 
?>