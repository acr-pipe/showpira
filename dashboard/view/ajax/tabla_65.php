<?php
if (sizeof($transaccion) > 0) {
    foreach ($transaccion as $obj) {
        echo '<a class="list-group-item d-flex tprod" id="a'.$obj[0].'">
        		<div class="row" style="width: 100%">
	    			<div class="col-sm-9">
	                	'.$obj[1].'
	                </div>
	                <div class="col-sm-3">
		                <span data-feather="edit-3" class="pointer edittipoprod" id="d'.$obj[0].'"></span>
		                <span data-feather="x-circle" class="pointer deltipo" style="color: #FC3F46" id="d'.$obj[0].'"></span>
	                </div>
                </div>
               </a>';
    }
}else{ ?>
    <a class="list-group-item d-flex justify-content-between align-items-center">
        No hay datos disponibles
    </a>
<?php } 
?>