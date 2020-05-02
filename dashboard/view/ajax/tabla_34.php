<?php 
	
	if (sizeof($transaccion) > 0) {
		
		foreach ($transaccion as $obj) {
			echo '	<li class="list-group-item p-1">
		      <div class="row p-0">
		        <div class="col col-sm-4 p-0" align="center">'.$obj[4].'</div>
		        <div class="col col-sm-4 p-0" align="center">'.$obj[5].'</div>
		        <div class="col col-sm-4 p-0" align="center">'.$obj[6].'</div>
		      </div>
		    </li>';
		}

	}

 ?>