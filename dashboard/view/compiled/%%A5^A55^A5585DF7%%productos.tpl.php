<?php /* Smarty version 2.6.17, created on 2020-04-06 16:43:40
         compiled from productos.tpl */ ?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="max-age=86400"/>
    <title>Productos</title>
   <?php echo $this->_tpl_vars['STY']; ?>

    <link rel="stylesheet" type="text/css" href="../assets/css/modulos/productos.css">
  </head>
  <body>
  <br>
    <?php echo $this->_tpl_vars['NAV']; ?>

  <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    <input type="hidden" id="hidprod" value="">
    <div class="row">
      
      <div class="col-md-6 mb-3">
          <div class="row pb-2">
            <div class="col col-sm-12">
              <h6>Lista de productos</h6>
            </div>
            <div class="col col-sm-6">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text bg-light">
                    <span data-feather="search"></span>
                  </span>
                </div>
                <input type="text" id="vsearch" class="form-control" placeholder="Buscar">
              </div>
            </div>
            <div class="col col-sm-6" align="right">
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
          </div>
        <table class="table" id="data-table-productoss">
          <thead>
            <tr>
              <th scope="col"></th>
              <th scope="col"></th>
              <th scope="col">Nombre</th>
              <th scope="col">Descripción</th>s
              <th scope="col">Precio</th>
              <!-- <th scope="col"></th> -->
            </tr>
          </thead>
          <tbody id="getProductos">
            <!-- JS -->
          </tbody>
        </table>
      </div>

      <div class="col-md-6 mb-3">
        <div class="row">
        <div class="col-md-6 mb-3">
          <label for="nom_prod">Nombre</label>
          <input type="text" class="form-control" id="nom_prod" placeholder="" value="" required="">
        </div>
        <div class="col-md-6 mb-3">
          <label for="desc_prod">Descripción</label>
          <textarea type="text" class="form-control" id="desc_prod" placeholder="" value="" required=""></textarea>
        </div>
        <div class="col-md-6 mb-3">
          <label for="tipo_prod">Categoría</label>
          <select class="custom-select d-block w-100" id="tipo_prod" value="0" required="">
            <!-- JS -->
          </select>
        </div>
        <div class="col-md-6 mb-3">
          <label for="sub_catego">Sub Categoría</label>
          <select class="custom-select d-block w-100" id="sub_catego" value="0" required="" disabled>
            <!-- JS -->
          </select>
        </div>
        <div class="col-md-6 mb-3">
          <label for="prec_prod">Precio</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text">₡</span>
            </div>
            <input type="text" class="form-control" id="prec_prod">
          </div>
        </div>
        <div class="col-md-6 mb-3">
          <label for="ivi_prod">I.V.I</label>
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <input type="checkbox" id="chkivi_prod" aria-label="Checkbox I.V.I">
              </div>
            </div>
            <input type="text" class="form-control" id="ivi_prod" placeholder="13%" value="" aria-label="I.V.I" disabled>
          </div>
          <!-- <label class="form-check-label">
            <input type="checkbox" class="form-check-input" id="chkivi_prod" style="margin-left: 15%">I.V.I
          </label>
          <label for="ivi_prod"></label>
          <input type="number" class="form-control" id="ivi_prod" placeholder="13%" value="" required=""> -->
        </div>
        <div class="col-md-6 mb-3">
          <label for="imv_prod">Impuesto</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text">₡</span>
            </div>
            <input type="text" class="form-control" id="imv_prod">
          </div>
        </div>
        <div class="col-md-6 mb-3">
          <label for="tot_prod">Total</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text">₡</span>
            </div>
            <input type="text" class="form-control" id="tot_prod">
          </div>
        </div>
        <div class="col-md-12 d-inline">
          <!-- <form action="../upload.php" method="post" id="producto-upload" class="dropzone needsclick dz-clickable">
            <input type="hidden" name="idproducto">
          </form> -->
          <!-- <div class="form-group">
          <div class="input-group">
              <span class="input-group-btn">
                  <button class="btn btn-light btn-file">
                      Elegir... <input type="file" class="form-control" name="productImage" id="productImage">
                  </button>
              </span>
              <input type="text" class="form-control" id="imgurl" readonly>
          </div>
          </div> -->
        <!-- </div>
        <div class="col-md-6 d-inline" align="center"> -->
          <!-- <img id='img-upload' /> -->
          <form action="../upload.php" method="post" id="img-upload" class="dropzone needsclick dz-clickable">
            <input type="hidden" name="idproducto">
          </form>
          <small><label class="text-muted">Dimensión recomendada: 350 × 350 px | Cantidad máxima de archivos: 5</label></small>
        </div>
        <div class="col-md-12 mb-3 mt-5 btn-group" role="group">
          <button type="button" class="btn btn-primary col-sm-10" id="addProd">Agregar</button>
          <button type="button" class="btn btn-light col-sm-2" id="cleanProd">Limpiar</button>
        </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="videoPreview" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <!-- <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div> -->
          <div class="modal-body">
              <video controls preload="auto">
                <source class="_video" src="" type="video/mp4">
                <p>Video description</p>
              </video>
          </div>
        </div>
      </div>
    </div>

  </main>
    <?php echo $this->_tpl_vars['SCR']; ?>

    <script src="../assets/js/modulos/productos.js"></script>
  </body>
</html>