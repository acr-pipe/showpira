<?php /* Smarty version 2.6.17, created on 2020-05-26 19:44:53
         compiled from orderhistory.tpl */ ?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="max-age=86400"/>
    <title></title>
   <?php echo $this->_tpl_vars['STY']; ?>

    <link rel="stylesheet" type="text/css" href="../assets/css/modulos/orderhistory.css">
  </head>
  <body>
  <br>
    <?php echo $this->_tpl_vars['NAV']; ?>


	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    <div class="d-flex align-items-center p-3 bg-light rounded shadow-sm">
      <div class="lh-100">
        <h6 class="mb-0 lh-100">Historial de Ordenes</h6>
      </div>
      <div class="col col-sm-3 offset-md-7">
      <div class="input-group lh-100">
        <div class="input-group-prepend">
          <span class="input-group-text bg-light">
            <span data-feather="calendar"></span>
          </span>
        </div>
        <input type="Date" class="form-control" id="vsearchdate">
      </div>
    </div>
    </div>
  
<!--   <div class="row">
    <div class="col col-sm-6">
      <div>
        <h2 class="">Historial de Ordenes</h2>
      </div>
    </div>
    <div class="col col-sm-3 offset-md-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text">
            <span data-feather="calendar"></span>
          </span>
        </div>
        <input type="Date" class="form-control">
      </div>
    </div>
  </div> -->

  <div class="row pt-2 pb-2">
    <div class="col col-sm-3 align-self-start" align="left">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-light">
            <span data-feather="search"></span>
          </span>
        </div>
        <input type="text" class="form-control" id="vsearch" placeholder="Buscar ordenes">
      </div>
    </div>
    <div class="col col-sm-3 offset-md-6" align="right">
      <div class="btn-group" role="group">
        <button type="button" class="btn btn-light">
          <span data-feather="edit-3"></span>
        </button>
        <button type="button" class="btn btn-light">
          <span data-feather="x"></span>
        </button>
      </div>
    </div>
  </div>
          
  <div>
    <table class="table table-hover" data-sort="table">
      <thead>
        <tr>
          <!-- <th><input type="checkbox" class="bsn" id="selectAll"></th> -->
          <th>Orden</th>
          <th>Nombre de cliente</th>
          <th>Fecha</th>
          <th>Total</th>
          <th>Estado</th>
        </tr>
      </thead>
      <tbody id="orderhistory">
        <!-- JS -->
      </tbody>
    </table>
  </div>


  <div class="modal" id="modal-order">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Detalle de: #ORD-<span id="numOrd"></span></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body" id="bdyModal">
          <div class="container" align="center">
            <section id="isexpress"></section>
            <ul class="list-group list-group-flush p-4" id="detalleOrd">
                
            </ul>
            <span id="fechaOrd" class="text-muted"></span>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light btn-block" data-dismiss="modal">Salir</button>
          <!--<div class="col-md-12 mb-3 mt-5 btn-group" role="group">
          <button type="button" class="btn btn-light col-sm-10" data-dismiss="modal">Salir</button>
          <button type="button" class="btn btn-primary col-sm-2"><span data-feather="printer"></span></button>
          </div> -->
        </div>
      </div>
    </div>
  </div>

	</main>
	
    <?php echo $this->_tpl_vars['SCR']; ?>

    <script src="../assets/js/modulos/orderhistory.js"></script>
  </body>
</html>