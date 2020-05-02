<?php 
	$str = '';
	$badge = '';
	$color = '';
	$serv = $estr = $envi = '';
	$acc1 = $acc2 = $acc3 = '';

	if (sizeof($transaccion) > 0) {
		foreach ($transaccion as $obj) {
            if ($obj[16] == 2) {
                $envi = 'Enviar';
                $entr = 'Entregar';
                $serv = 'Servir';
                $acc1 = 'enviar';
                $acc2 = 'entregar';
                $acc3 = 'servir';
            }else if ($obj[16] == 3) {
                $serv = $entr = $envi = 'Completar';
                $acc1 = $acc2 = $acc3 = 'completar';

            }else if ($obj[16] == 4) {
                $serv = $entr = $envi = 'Finalizar';
                $acc1 = $acc2 = $acc3 = 'finalizar';
            }

            if ($obj[2] == 1) {
                $badge = '<label class="badge badge-primary text-wrap" style="width: 3rem;">express</label>';
                $estado = '<a class="asign" href="#" id="e'.$obj[0].'" accion="'.$acc1.'">'.$envi.'</a></p></div>';
                $color = '#007bff';
            }else if ($obj[2] == 2){
                $badge = '<label class="badge badge-dark text-wrap" style="width: 3rem;">recoge</label>';
                $estado = '<a class="asign" href="#" id="i'.$obj[0].'" accion="'.$acc2.'">'.$entr.'</a></p></div>';
                $color = '#343a40';
            }else{
                $badge = '<label class="badge badge-warning text-wrap" style="width: 3rem;">servido</label>';
                $estado = '<a class="asign" href="#" id="s'.$obj[0].'" accion="'.$acc3.'">'.$serv.'</a></p></div>';
                $color = '#ffc107';
            }

            if ($obj[16] == 2) {
                echo '<div class="media text-muted pt-3" id="d'.$obj[0].'"><svg class="mr-2 rounded" width="32" height="32" focusable="false"><rect id="s'.$obj[0].'" width="100%" height="100%" fill="'.$color.'"></rect></svg><p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray"><strong class="d-block text-dark">'.$obj[6].'</strong><b>Nº: '.$obj[0].' | </b> <b>Telefono:</b> '.$obj[7].'</b> | <b>Direccion:</b> '.$obj[10].', '.$obj[11].' | <b>Distancia:</b> '.$obj[14].'kms | <b>Total</b>: '.$obj[15].' | '. $badge.' | Hace <b id="t'.$obj[0].'" fecha="'.$obj[4].'" class="timeid"></b> | '.$estado;

                // select a.id as idorden 0,a.idestado 1,c.isexpress 2,date_format(a.fecha,'%Y-%m-%d') as fecha 3,a.fecha 4,a.idusuario 5,e.nombre as usuario 6,e.telefono 7,d.phone 8,e.correo 9,d.direccion 10,d.otrassenas 11,d.latitud 12,d.longitud 13,d.kms 14,concat('₡',b.total) as total 15,a.idestado 16
            }else if ($obj[16] == 3 || $obj[16] == 4) {
                echo '<div class="media text-muted pt-3" id="d'.$obj[0].'"><svg class="mr-2 rounded" width="32" height="32" focusable="false"><rect id="s'.$obj[0].'" width="100%" height="100%" fill="'.$color.'"></rect></svg><p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray"><strong class="d-block text-dark">'.$obj[6].'</strong><b>Telefono:</b> '.$obj[8].'</b> | <b>Direccion:</b> '.$obj[10].', '.$obj[11].' | <b>Distancia:</b> '.$obj[14].'kms | <b>Total</b>: '.$obj[15].' | '. $badge.' | Hace <b id="t'.$obj[0].'" fecha="'.$obj[4].'" class="timeid"></b> | '.$estado;
            }

		}
	}else{ ?>
        <div align="center">No hay datos disponibles</div>
    <?php } 

 ?>