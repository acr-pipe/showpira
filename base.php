 <!DOCTYPE html>
 <html lang="es">
   <head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta http-equiv="Cache-Control" content="max-age=86400"/>
     <title></title>
 
     <link href="assets/css/bootstrap.css" rel="stylesheet">
 
     <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
     <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
     <!--[if lt IE 9]>
       <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
       <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
     <![endif]-->
   </head>
   <body>
     <?php 	
		if (!isset($_REQUEST['modulo'])) {
			?>
			<div class="alert alert-danger" style="text-align: center; margin-top:5%">
				<strong>ACCESO DENEGADO!</strong><br> No tiene Permisos
			</div>
			<?php
		}else{
			echo "<div class=\"container\">";
			$modulo = $_REQUEST['modulo'];
			echo "<h2><b>Módulo: $modulo</b></h2><br>";

			$nuevoarchivo = fopen("dashboard/control/ctr_".$modulo.".php", "w+"); 
			
			$contenido = "<?php  
	    require_once 'model/m_general.php';
	    \$kakaroto = new _general();

	    if (!isset(\$_REQUEST['accion'])) {
	   	require '../_config/mySmarty.php';
	   
	   	\$smarty  = new mySmarty();
	   	\$smarty->setModule('dashboard');
	   	\$pg = \$smarty->fetch('../view/menu.php');
	    \$sty = \$smarty->fetch('../view/styles.php');
        \$scr = \$smarty->fetch('../view/scripts.php');
    
        \$smarty->assign('STY',\$sty);
        \$smarty->assign('SCR',\$scr);
	   	\$smarty->assign('NAV',\$pg);
	   	\$smarty->display('".$modulo.".tpl');
	   }else{
	   \$pagina = 0;
	   	switch (\$_REQUEST['accion']) {
	   		case 1:
	   			
	   			break;
	   	}
		if(!\$pagina){
		   	if (is_array(\$transaccion)){
				\$marcas = \$transaccion;
				\$succed = 1;
				}else{
					\$marcas = array('ERROR'=>\$transaccion);
					\$succed = 0;
				}
		
				\$salida = array('succed'=>\$succed);
				array_push(\$salida, \$marcas);
				print_r(json_encode(\$salida));	
		
		   }
	    }	
			   
?>";

			fwrite($nuevoarchivo,$contenido); 
 			fclose($nuevoarchivo);
 			if (is_file("dashboard/control/ctr_".$modulo.".php")) 
 				echo "Archivo Controlador Creado<br>";

 	/* 		$nuevoarchivo = fopen("dashboard/model/m_".$modulo.".php", "w+"); 

// 			$contenido = "<?php 
				
// 	require_once '../_config/RUD.php';

// 	class _".$modulo." extends RUD
// 	{
		
// 	}
			
// ?>";

			fwrite($nuevoarchivo,$contenido); 
			fclose($nuevoarchivo);
			if (is_file("dashboard/model/m_".$modulo.".php")) 
				echo "Archivo Modelo Creado<br>";*/

			$nuevoarchivo = fopen("dashboard/view/".$modulo.".tpl", "w+"); 
			
			$contenido = "<!DOCTYPE html>
<html lang=\"es\">
  <head>
    <meta charset=\"utf-8\">
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <meta http-equiv=\"Cache-Control\" content=\"max-age=86400\"/>
    <title></title>
   {\$STY}
    <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/modulos/".$modulo.".css\">
  </head>
  <body>
  <br>
    {\$NAV}

	<main role=\"main\" class=\"col-md-9 ml-sm-auto col-lg-10 px-4\">

	</main>
	
    {\$SCR}
    <script src=\"../assets/js/modulos/".$modulo.".js\"></script>
  </body>
</html>";

			fwrite($nuevoarchivo,$contenido); 
			fclose($nuevoarchivo);
			if (is_file("dashboard/view/".$modulo.".tpl")) 
				echo "Archivo Vista Creado<br>";

			echo "</div>";
			fopen("assets/css/modulos/".$modulo.".css", "w+");

			$nuevoarchivo = fopen("assets/js/modulos/".$modulo.".js", "w+");

			$contenido = "\$(function(){
	\$(\"#data-table-".$modulo."s\").dataTable({
        bFilter: false,
        bScrollInfinite: true,
        bSort: false,
        bLengthChange: false,
        order: [],
        bPaginate: false,
        info: false
    });

});

function validar (varreglo,vmodulo) {
	
	var salida = {}
	
		/*VALIDACION FRONT END*/
	
	switch(vmodulo['modulo']) {
		case '".$modulo."':
			if (vmodulo['tip'] == '') {
				err = validar".$modulo."();
				if ( err ) {
					return err;
				}
			}
			
			break;
		default:
			return 'Módulo no Existente';
			break;
	}

	salida = odin(varreglo,\"f\"+vmodulo['modulo']+\"s\");
	return salida;

}

function validar".$modulo."() {


	return false;
}

function endDetail(vid,vacc,modulo){

    return false;
}

function cargar(vmodulo,vid) {


	switch(vmodulo['modulo']) {
		case '".$modulo."':
			vmodulo['sel'] = '';
			vmodulo['tbl'] = 3;
			vmodulo['where'] ='';
			break;
		default:
			return 'Módulo no Existente';
			break;
	}
	
	return vmodulo;
}

function cargarSintax(){
	var arr = {}

	arr['sel'] = '';
	arr['tbl'] = 4;
	arr['where'] = '';

	return arr;
}";

			fwrite($nuevoarchivo,$contenido); 
			fclose($nuevoarchivo);

			exec("chmod 777 /opt/lampp/htdocs/demo2.0/ -R");
		} ?>
 	
     <script src="assets/js/jquery.js"></script>
     <script src="assets/js/bootstrap.min.js"></script>
     <script src="assets/libs/DataTables/media/js/jquery.dataTables.js"></script>
   </body>
 </html>