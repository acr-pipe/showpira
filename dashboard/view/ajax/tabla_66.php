<?php
if (sizeof($transaccion) > 0) {
    foreach ($transaccion as $obj) {
        echo '<li class="list-group-item d-flex justify-content-between align-items-center">
                '.$obj[1].'
                <span data-feather="x-circle" class="pointer delcatego" style="color: #FC3F46" tprod="'.$obj[3].'" id="s'.$obj[0].'" ></span>
            </li>';
    }
}else{ ?>
    <li class="list-group-item d-flex justify-content-between align-items-center">
        No hay datos diponibles
    </li>
<?php } 
?>