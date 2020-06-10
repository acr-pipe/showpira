<?php /* Smarty version 2.6.17, created on 2020-06-10 16:41:13
         compiled from ordenes.tpl */ ?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="max-age=86400"/>
    <title></title>
   <?php echo $this->_tpl_vars['STY']; ?>

    <link rel="stylesheet" type="text/css" href="../assets/css/modulos/ordenes.css">
  </head>
  <body>
  <br>
    <?php echo $this->_tpl_vars['NAV']; ?>

  <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
  <div class="d-flex align-items-center p-3 bg-light rounded shadow-sm">    
    <div class="lh-100">
      <h6 class="mb-0 lh-100">Ordenes en preparación</h6>
    </div>
  </div>
  <!-- <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="#" class="tipord text-dark" tipo="0">Todas</a></li>
      <li class="breadcrumb-item"><a href="#" class="tipord text-dark" tipo="2">Preparación <span class="text-primary">•</span></a></li>
      <li class="breadcrumb-item"><a href="#" class="tipord text-dark" tipo="3">Enviadas <span class="text-dark">•</span></a></li>
      <li class="breadcrumb-item"><a href="#" class="tipord text-dark" tipo="4">Finalizadas <span class="text-warning">•</span></a></li>
      <li class="breadcrumb-item"><a href="#" class="tipord text-dark" tipo="5">Completadas <span class="text-danger">•</span></a></li>
    </ol>
  </nav> -->
  <br>
  <div class="card-columns" id="ordenLlegada">
      <!-- card-deck -->
      <!-- JS -->
  </div>
    
  </main>
    <?php echo $this->_tpl_vars['SCR']; ?>

    <script src="../assets/js/modulos/ordenes.js"></script>
  </body>
</html>