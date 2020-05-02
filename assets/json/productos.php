<?php
    include_once '../../_config/mysqlDB.php'; 

    $base = new DBClass();
    $rs =$base->ejecutar('select a.*, b.url from productos a join productosurl b on a.id = b.idproducto where a.id > 0 group by b.idproducto');
    if (isset($rs->num_rows)) {
        $salida = [];
        while ($fila = $rs->fetch_assoc()) {
            array_push($salida, $fila);
        }
    }

    echo json_encode($salida);
 ?>