<?php /* Smarty version 2.6.17, created on 2020-05-13 22:00:45
         compiled from cupones.tpl */ ?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="max-age=86400"/>
    <title></title>
   <?php echo $this->_tpl_vars['STY']; ?>

    <link rel="stylesheet" type="text/css" href="../assets/css/modulos/cupones.css">
  </head>
  <body>
  <br>
    <?php echo $this->_tpl_vars['NAV']; ?>


	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    <input type="hidden" id="hidcupo" value="">
      <div class="row pt-1 pb-1">
        <div class="col-md-3">
          <h6>Lista de cupones</h6>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text bg-light">
                <span data-feather="search"></span>
              </span>
            </div>
            <input type="text" id="vsearch" class="form-control" placeholder="Buscar">
          </div>
        </div>
        <div class="col col-md-6 mt-4">
          <div class="btn-group" role="group">
            <button type="button" class="btn btn-light mod">
              Editar &nbsp;
              <span data-feather="edit-3"></span>
            </button>
            <button type="button" class="btn btn-light del">
              Borrar &nbsp;
              <span data-feather="x"></span>
            </button>
          </div>
        </div>
        <div class="col-md-3" align="right">
          <br>
          <button type="button" class="btn btn-primary oldcupons">
            Ver cupones desactivados &nbsp;
            <span data-feather="copy"></span>
          </button>
        </div>
      </div>
    <div class="row">
      <div class="col-md-3" align="center">
        <div class="p-2" id="contcupons" style="height: 100%; max-height: 620px; overflow: scroll; background: #fafafa">
          <!-- JS -->
        </div>
      </div>
        <div class="col-md-9 mb-3">
        <div class="row">
        <div class="col-md-5 mb-3">
          <label for="nom_cupo">Nombre</label>
          <input type="text" class="form-control" id="nom_cupo" placeholder="" value="" required="">
        </div>
        <div class="col-md-7 mb-3">
          <label for="desc_cupo">Descripción</label>
          <textarea type="text" class="form-control" id="desc_cupo" placeholder="" value="" required=""></textarea>
        </div>
        <div class="col-md-3 mb-3">
          <label for="prec_cupo">Precio</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text">₡</span>
            </div>
            <input type="text" class="form-control text-right" id="prec_cupo">
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <label for="ivi_cupo">I.V.I</label>
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <input type="checkbox" id="chkivi_cupo" aria-label="Checkbox I.V.I">
              </div>
            </div>
            <input type="text" class="form-control text-right" id="ivi_cupo" placeholder="13%" value="" aria-label="I.V.I" disabled>
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <label for="imv_cupo">Impuesto</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text">₡</span>
            </div>
            <input type="text" class="form-control text-right" id="imv_cupo">
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <label for="tot_cupo">Total</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text">₡</span>
            </div>
            <input type="text" class="form-control text-right" id="tot_cupo">
          </div>
        </div>
        <div class="col col-md-12 mt-4">
          <input type="hidden" id="hvidpub" value="">
          <label style="margin-top: -25px">Publicación <span class="text-muted">- Defina los parámetros dentro de los cuales va a ser visible la publicación, el formato de la hora debe ser en 24H</span></label>
          
          <div class="card">
            <div class="card-header">
              <div class="row">
                <input type="hidden" id="hchkcupon" value="0">
                <div class="col-sm-6">
                <div class="form-check">
                  <input class="form-check-input ml-2 optpulic" type="radio" name="optpulic" id="entrefechas" value="1">
                  <label class="form-check-label ml-5" for="entrefechas">
                    Entre fechas
                  </label>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-check">
                  <input class="form-check-input ml-2 optpulic" type="radio" name="optpulic" id="pordias" value="2">
                  <label class="form-check-label ml-5" for="pordias">
                    Por día
                  </label>
                </div>
              </div>  
            </div>
            </div>
            <div class="card-body p-1" id="bodypublic">
              <section id="dentrefechas" class="contdpub">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text bg-light">
                      Desde
                    </span>
                  </div>
                  <input type="date" id="fdesde" class="form-control">
                  <input type="time" id="tdesde" class="form-control">
                  <div class="input-group-append">
                    <span class="input-group-text bg-light">
                      hasta
                    </span>
                  </div>
                  <input type="date" id="fhasta" class="form-control">
                  <input type="time" id="thasta" class="form-control">
                  <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button" id="cleanPub"><span data-feather="x"></span></button>
                    <!-- <span class="input-group-text bg-light">
                      <span data-feather="x"></span>
                    </span> -->
                  </div>
                </div>
              </section>
              <section id="dpordias" class="contdpub">
                <div class="input-group">
                  <div class="input-group-prepend" style="width: 100%">
                    <div class="input-group-text">
                      <input type="checkbox" class="week_chck daymon" data-toggle="toggle" id="chckmon" day="mon">
                    </div>
                    <label for="mon" class="input-group-text" style="width: 100%;">Lunes</label>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Desde</span>
                    </div>
                    <input type="time" class="form-control mon" id="mon_a" disabled>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Hasta</span>
                    </div>
                    <input type="time" class="form-control mon" id="mon_c" disabled>
                  </div>
                </div>

                <div class="input-group mt-2">
                  <div class="input-group-prepend" style="width: 100%">
                    <div class="input-group-text">
                      <input type="checkbox" class="week_chck daytue" data-toggle="toggle" id="chckmon" day="tue">
                    </div>
                    <label for="tue" class="input-group-text" style="width: 100%;">Martes</label>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Desde</span>
                    </div>
                    <input type="time" class="form-control tue" id="tue_a" disabled>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Hasta</span>
                    </div>
                    <input type="time" class="form-control tue" id="tue_c" disabled>
                  </div>
                </div>

                <div class="input-group mt-2">
                  <div class="input-group-prepend" style="width: 100%">
                    <div class="input-group-text">
                      <input type="checkbox" class="week_chck daywed" data-toggle="toggle" id="chckmon" day="wed">
                    </div>
                    <label for="wed" class="input-group-text" style="width: 100%;">Miercoles</label>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Desde</span>
                    </div>
                    <input type="time" class="form-control wed" id="wed_a" disabled>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Hasta</span>
                    </div>
                    <input type="time" class="form-control wed" id="wed_c" disabled>
                  </div>
                </div>

                <div class="input-group mt-2">
                  <div class="input-group-prepend" style="width: 100%">
                    <div class="input-group-text">
                      <input type="checkbox" class="week_chck daythu" data-toggle="toggle" id="chckmon" day="thu">
                    </div>
                    <label for="thu" class="input-group-text" style="width: 100%;">Jueves</label>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Desde</span>
                    </div>
                    <input type="time" class="form-control thu" id="thu_a" disabled>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Hasta</span>
                    </div>
                    <input type="time" class="form-control thu" id="thu_c" disabled>
                  </div>
                </div>

                <div class="input-group mt-2">
                  <div class="input-group-prepend" style="width: 100%">
                    <div class="input-group-text">
                      <input type="checkbox" class="week_chck dayfri" data-toggle="toggle" id="chckmon" day="fri">
                    </div>
                    <label for="fri" class="input-group-text" style="width: 100%;">Viernes</label>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Desde</span>
                    </div>
                    <input type="time" class="form-control fri" id="fri_a" disabled>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Hasta</span>
                    </div>
                    <input type="time" class="form-control fri" id="fri_c" disabled>
                  </div>
                </div>

                <div class="input-group mt-2">
                  <div class="input-group-prepend" style="width: 100%">
                    <div class="input-group-text">
                      <input type="checkbox" class="week_chck daysat" data-toggle="toggle" id="chckmon" day="sat">
                    </div>
                    <label for="sat" class="input-group-text" style="width: 100%;">Sabado</label>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Desde</span>
                    </div>
                    <input type="time" class="form-control sat" id="sat_a" disabled>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Hasta</span>
                    </div>
                    <input type="time" class="form-control sat" id="sat_c" disabled>
                  </div>
                </div>

                <div class="input-group mt-2">
                  <div class="input-group-prepend" style="width: 100%">
                    <div class="input-group-text">
                      <input type="checkbox" class="week_chck daysun" data-toggle="toggle" id="chckmon" day="sun">
                    </div>
                    <label for="sun" class="input-group-text" style="width: 100%;">Domingo</label>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Desde</span>
                    </div>
                    <input type="time" class="form-control sun" id="sun_a" disabled>
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="background: #fafafa">Hasta</span>
                    </div>
                    <input type="time" class="form-control sun" id="sun_c" disabled>
                  </div>
                </div>
              </section>
            </div>
          </div>
        </div>

        <div class="col-md-8 mt-4 d-inline">
          <div class="card">
            <div class="card-header">
              Productos relacionados <small class="text-muted">- Agregue los productos relacionados a este cupón</small>
              <div class="input-group mt-1">
                <div class="input-group-prepend">
                  <span class="input-group-text bg-light">
                    <span data-feather="search"></span>
                  </span>
                </div>
                <input type="text" id="vsearchprod" class="form-control" placeholder="Buscar producto">
                <div class="input-group-append">
                  <button class="btn btn-outline-primary" type="button" id="addprod">
                    Agregar
                  </button>
                </div>
              </div>
            </div>
            <div class="card-body p-1">
              <input type="hidden" id="hidprod" value="">
              <input type="hidden" id="hsource" value="">
              <ul class="list-group list-group-flush" id="listprod">
                <!-- JS -->
                <div class="col-12 text-center p-2 mjsempty">No hay datos disponibles</div>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-4 mt-4 d-inline">
          <form action="../upload.php" method="post" id="img-upload" class="dropzone needsclick dz-clickable">
            <input type="hidden" name="idcupon">
          </form>
          <small><label class="text-muted">Dimensión recomendada: 850 × 350 px | Cantidad máxima de archivos: 1</label></small>
        </div>
        <div class="col-md-7 mb-3 mt-5 btn-group" role="group">
          <button type="button" class="btn btn-primary col-sm-10" id="addCupo">Agregar</button>
          <button type="button" class="btn btn-light col-sm-2" id="cleanCupo">Limpiar</button>
        </div>
        </div>
      </div>

    </div>

  <!-- Modal -->
    <div class="modal fade" tabindex="-1" id="oldcupons" role="dialog" aria-labelledby="oldcupons" aria-hidden="true">
      <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="aDeliverlabel">Cupones desactivados</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row" id="cont-cupondesactivado">
              <!-- JS -->
            </div>
        </div>
      </div>
    </div>

	</main>
	
    <?php echo $this->_tpl_vars['SCR']; ?>

    <script src="../assets/js/modulos/cupones.js"></script>
  </body>
</html>