<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="max-age=86400"/>
    <title>Seguimiento</title>
    {$STY}
    <link rel="stylesheet" type="text/css" href="../assets/css/modulos/seguimiento.css">
  </head>
  <body>
    <br>
    {$NAV}

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
      <div id="map"></div>
    </main>

    <div class="modal fade" id="consolidate-modal" tabindex="-1" role="dialog" aria-labelledby="consolidatelabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="consolidatelabel">Consolidar ruta</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form>
              <div class="form-group">
                <label for="vidusuario">Conductor</label>
                <select class="form-control" id="vidusuario"></select>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" id="consolidar">Consolidar</button>
          </div>
        </div>
      </div>
    </div>

    {$SCR}
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDLB2vWjNh43L-4w9S35XePIGr6NCtZW2s&callback=initMap"
    async defer></script>
    <script src="../assets/js/modulos/seguimiento.js"></script>
  </body>
</html>