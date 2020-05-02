<?php
  header ("Access-Control-Allow-Origin: *");
  require_once 'm_login.php';
  $log = new _login();

  $arreglo = json_decode( $_REQUEST['arreglo'], true );
  $transaccion = $log->kamehameha($arreglo['sel'],$arreglo['tbl'],$arreglo['where']);
  $pagina = 0;

if(!$pagina) {
  if (isset($_REQUEST['arreglo']['JSON'])) {
    $salida = array();

    if (is_array($transaccion)) {
      foreach ($transaccion as $obj) {
        $salida[$obj[0]] = $obj[1];
      }
    }else{ 
      print_r($transaccion);
    }

  }else{
    if (is_array($transaccion)) {
      $marcas = $transaccion;
      $succed = 1;
    }else{
      $marcas = array('ERROR'=>$transaccion);
      $succed = 0;
    }
    $salida = array('succed'=>$succed);
    array_push($salida, $marcas);
  }
  echo json_encode($salida);
}
?>