<?php
if (sizeof($transaccion) > 0) {
    foreach ($transaccion as $obj) {
        echo '<li class="list-group-item d-flex justify-content-between align-items-center">
				<span>'.$obj[1].' - <span class="text-muted">'.$obj[2].'</span></span>
				<span data-feather="x-circle" class="pointer delfer" style="color: #FC3F46" id="f'.$obj[0].'" ></span>
			</li>';
    }
}else{ ?>
    <li class="list-group-item d-flex justify-content-between align-items-center">
        No hay datos diponibles
    </li>
<?php } 
?>