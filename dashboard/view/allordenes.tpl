<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="max-age=86400"/>
    <title></title>
   {$STY}
    <link rel="stylesheet" type="text/css" href="../assets/css/modulos/allordenes.css">
  </head>
  <body>
  <br>
    {$NAV}

	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
	
		<div class="d-flex align-items-center p-3 bg-light rounded shadow-sm">
			<div class="lh-100">
				<h6 class="mb-0 lh-100">Todas las ordenes</h6>
			</div>
		</div>
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#" class="tipord text-dark" tipo="0">Todas</a></li>
				<li class="breadcrumb-item"><a href="#" class="tipord text-dark" tipo="1">Express <span class="text-primary">•</span></a></li>
				<li class="breadcrumb-item"><a href="#" class="tipord text-dark" tipo="2">Recoge <span class="text-dark">•</span></a></li>
				<li class="breadcrumb-item"><a href="#" class="tipord text-dark" tipo="3">Servido <span class="text-warning">•</span></a></li>
			</ol>
		</nav>
		
		<div class="my-3 p-3 bg-white rounded shadow-sm">
			<section id="getordenesbytipo">
				<!-- JS -->
			</section>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="aDeliver" tabindex="-1" role="dialog" aria-labelledby="aDeliver" aria-hidden="true">
		<div class="modal-dialog" role="document">
		  <div class="modal-content">
		    <div class="modal-header">
		      <h5 class="modal-title" id="aDeliverlabel">Asignar orden a:</h5>
		      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		        <span aria-hidden="true">&times;</span>
		      </button>
		    </div>
		    <div class="modal-body">
		      <div class="input-group">
		        <div class="input-group-prepend">
		          <span class="input-group-text bg-light">
		            <span data-feather="search"></span>
		          </span>
		        </div>
		        <input type="text" class="form-control" id="vsearch" placeholder="Buscar por nombre o teléfono">
		      </div>
		      <br>
		      <ul class="list-group" id="showDelivery">
		        
		      </ul>
		    </div>
		    <div class="modal-footer">
		      <!-- <button type="button" class="btn btn-light" data-dismiss="modal">Salir</button> -->
		      <button type="button" class="btn btn-primary" viddriver="" id="asignDelivery" idorden="0" estado="0" accion="0">Asignar</button>
		    </div>
		  </div>
		</div>
		</div>
	
	</main>


    {$SCR}
    <script src="../assets/js/modulos/allordenes.js"></script>
  </body>
</html>