<?php /* Smarty version 2.6.17, created on 2020-04-02 15:30:41
         compiled from main.tpl */ ?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Cache-Control" content="max-age=86400"/>
        <title>foodcourt</title>
        <?php echo $this->_tpl_vars['STY']; ?>

        <link rel="stylesheet" type="text/css" href="../assets/css/modulos/main.css">
    </head>
    <body>

    <?php echo $this->_tpl_vars['NAV']; ?>


    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

      <!-- <section class="chart">
        <h4>Ventas semanales</h4>
        <canvas class="my-4 w-100" id="myChart" width="900" height="200"></canvas>
      </section> -->

      <div class="d-flex align-items-center p-3 text-white-50 bg-primary rounded shadow-sm">
        <div class="lh-100">
          <h6 class="mb-0 text-white lh-100">Ordenes pendientes</h6>
          <small>En preparación</small>
        </div>
      </div>

      <div class="my-3 p-3 bg-white rounded shadow-sm">
        <h6 class="border-bottom border-gray pb-2 mb-0">Por orden de llegada</h6>
          <div class="media text-muted pt-3">
            <section id="ordenLlegada">
            <!-- JS -->
            </section>
        </div>
        <small class="d-block text-right mt-3">
          <a href="allordenes">Ver todas</a>
        </small>
      </div>

      <div class="row">
      <div class="my-3 p-3 bg-white rounded shadow-sm col-sm-6">
        <h6 class="border-bottom border-gray pb-2 mb-0">Ordenes en camino</h6>
        <div class="media text-muted pt-3">
          <section id="ordenEnviada">
          <!-- JS -->
          </section>
        </div>
        <small class="d-block text-right mt-3">
          <a href="#">Ver todas</a>
        </small>
      </div>

      <div class="my-3 p-3 bg-white rounded shadow-sm col-sm-6">
        <h6 class="border-bottom border-gray pb-2 mb-0">Ordenes finalizadas</h6>
        <div class="media text-muted pt-3">
          <section id="ordenCompleta">
          <!-- JS -->
          </section>
        </div>
        <small class="d-block text-right mt-3">
          <a href="#">Ver todas</a>
        </small>
      </div>
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
    
    <?php echo $this->_tpl_vars['SCR']; ?>


    <script src="../assets/js/modulos/main.js"></script>

</body>
</html>