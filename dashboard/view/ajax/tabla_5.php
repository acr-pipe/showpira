<?php

if (sizeof($transaccion) > 0) {
	foreach ($transaccion as $obj) {
		echo '<option value="'.$obj[0].'">'.$obj[1].'</option>';
	}
}


?>