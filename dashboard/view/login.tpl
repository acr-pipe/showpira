<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
  <meta http-equiv="Cache-Control" content="max-age=86400"/>
  <title>Login</title>
  <link rel="icon" type="image/png" href="../assets/img/favicon.ico">

  <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap/bootstrap.min.css">

</head>
<body>

<div class="container" align="center">
    <div class="jumbotron col-sm-5">
      <div class="row" align="center">
            <div class="col-sm-12">
                <img src="../assets/img/signin.svg" width="60%">
            </div>
        </div>
      <br>
      <hr class="my-4">
      <!-- <p class="text-muted" align="center">Inicio de sesion</p> -->
        <form role="form" id="logF" action="index.php" method="POST">
        <input type="hidden" name="vdir" id="vdir" value="">
        <div class="row">
            <div class="col-sm-12" align="left">
                <div class="form-group">
                  <label for="pass">Usuario</label>
                    <input id="user" type="text" class="form-control" name="usr" placeholder="Usuario" autocomplete="off" value="">
                </div>
            </div>
            <div class="col-sm-12" align="left">
              <label for="pass">Contraseña</label>
              <div class="input-group mb-2 mr-sm-2">
                <div class="input-group-prepend">
                  <div class="input-group-text" id="verpass">
                    <span class="verpass" data-feather="eye-off"></span>
                  </div>
                </div>
                <input type="password" class="form-control passs" id="pass" name="pss" aria-describedby="passlHelp" placeholder="Contraseña" autocomplete="new-password" value="">
              </div>
              <small id="passlHelp" class="form-text text-muted">No comparta su contraseña con alguien más.</small><br>
              <!-- <div class="form-group">
              <label for="pass">Contraseña</label>
              <input type="password" class="form-control" id="pass" aria-describedby="emailHelp" placeholder="Enter email">
              <small id="emailHelp" class="form-text text-muted">No comparta su contraseña con alguien más.</small>
              </div> -->
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-sm-12" align="center">
                <button id="loging" type="submit" class="btn btn-primary btn-block">Ingresar</button>
            </div>
            <div class="col-sm-12" align="right">
                <small><a href="#" class="text-muted">Recuperar contraseña</a></small>
            </div>
        </div>
        </form>
    </div>
</div>
{$SCR}
<script src="../assets/js/jquery.js"></script>
<script src="../assets/js/bootstrap/bootstrap.min.js"></script>
<script src="../assets/js/asgard.js"></script>
<script src="../assets/js/modulos/login.js"></script>
</body>
</html>
