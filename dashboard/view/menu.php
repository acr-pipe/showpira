<!-- <nav class="navbar navbar-primary fixed-top bg-primary flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-sm-3 col-md-2 mr-0 text-white" href="#">App <i>food_court</i></a>
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <span id="nuser" class="text-white" style="display: inline-block;"></span>
      <a class="nav-link text-white" href="logout"  style="display: inline-block;">Cerrar Sesión</a>
    </li>
  </ul>
</nav> -->
<nav class="navbar navbar-expand-lg fixed-top flex-md-nowrap p-0 shadow navbar-dark bg-primary">
  <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">App <i>name</i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <!-- <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li> -->
    </ul>
    <ul class="navbar-nav ml-auto nav-flex-icons">
      <li class="nav-item avatar pr-2">
        <a class="nav-link p-0" disabled>
          <img src="../assets/img/user.png" class="rounded-circle z-depth-0" alt="avatar image" height="35">
        </a>
      </li>
      <li class="nav-item dropdown pr-2">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span id="nuser"></span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
          <!-- <a class="dropdown-item" href="#">Action</a> -->
          <a class="dropdown-item" href="logout">Cerrar sesión</a>
        </div>
      </li>
    </ul>
  </div>
</nav>

<div class="container-fluid">
  <div class="row">
    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
      <div class="sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item per7100">
            <a class="nav-link" href="main">
              <span data-feather="home"></span>
              Dashboard <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item per7100">
            <a class="nav-link" href="ordenes">
              <span data-feather="folder"></span>
              Ordenes
            </a>
            <ul>
              <a class="nav-link" href="allordenes">
                <small>
                  <span data-feather="folder-plus"></span>
                  Todas las ordenes
                </small>
              </a>
            </ul>
            <ul>
              <a class="nav-link" href="orderhistory">
                <small>
                  <span data-feather="calendar"></span>
                  Historial de ordenes
                </small>
              </a>
            </ul>
          </li>
          <li class="nav-item per7100">
            <a class="nav-link" href="productos">
              <span data-feather="shopping-cart"></span>
              Productos
            </a>
          </li>
          <li class="nav-item per7100">
            <a class="nav-link" href="cupones">
              <span data-feather="tag"></span>
              Cupones
            </a>
          </li>
          <li class="nav-item per7100">
            <a class="nav-link" href="seguimiento">
              <span data-feather="map-pin"></span>
              Seguimiento
            </a>
          </li>
          <li class="nav-item per7100">
            <a class="nav-link" href="reportes">
              <span data-feather="bar-chart-2"></span>
              Reportes
            </a>
          </li>
          <li class="nav-item per7100">
            <a class="nav-link" href="setting">
              <span data-feather="settings"></span>
              Configuración
            </a>
          </li>
        </ul>

<!--         <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Saved reports</span>
          <a class="d-flex align-items-center text-muted" href="#">
            <span data-feather="plus-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Current month
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Last quarter
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Social engagement
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Year-end sale
            </a>
          </li>
        </ul> -->
      </div>
    </nav>
    <div id="notification" style="z-index: 4000; position: fixed; margin: 2% 25%; width: 50%" align="center"></div>