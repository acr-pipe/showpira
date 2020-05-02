$(function(){

	loadtipoprods();
	loadinfohorario();
	loadinfoferiados();
	loadprecioenvios();
	loadcategorias(0);

	$("#collapsecategorias").collapse({ toggle: true });
	$("#collapsesubcategorias").collapse({ toggle: true });
	$("#collapsehorarios").collapse({ toggle: true });
	$("#collapseferiados").collapse({ toggle: true });
	$("#collapsetarifas").collapse({ toggle: true });
	$("#collapsenuevo").collapse({ toggle: true });
});

$(document).on('click', '.tprod', function() {
	var id = $(this).attr('id').substr(1);
	// console.log(id);
	$(".tprod").removeClass('active');
	$(this).addClass('active');
	$("#tipoprod").val(id);
	loadcategorias( id );
});

$(document).on('click', '#addinfoferiados', function() {
	var fdate = $("#fdate").val();
	var fdesc = $("#fdesc").val();

	var a = arr('login',4,'',69,'1,0,"'+fdate+'","'+fdesc+'",@@impresa',0,0,0);
	console.log(a);

	$("#fdate").val('');
	$("#fdesc").val('');
	loadinfoferiados();
});

function loadinfoferiados() {
	var feriados = arr('login',6,'',78,'@@impresa',0,1,$("#feriados"));
	console.log(feriados);
	feather.replace();
}

$(document).on('click', '.delfer', function() {
	var vid = $(this).attr('id').substr(1);
	var a = arr('login',4,'',69,'3,'+vid+',"0000-00-00","",@@impresa',0,0,0);
	// console.log(a);
	loadinfoferiados();
});

$(document).on('click', '#addprecioenvios', function() {
	var pkm = $("#pkm").val() == '' ? 0 : $("#pkm").val();
	var pfijo = $("#pfijo").val() == '' ? 0 : $("#pfijo").val();
	var a = arr('login',4,'',70,pkm+','+pfijo+',@@impresa',0,0,0);
	console.log(a);
	if (a['succed']) {
		notification('Precio actualizado correctamente', 'success', 3500);
	}else{
		notification('No se pudo actualizar el precio', 'danger', 3500);
	}
});

function loadprecioenvios() {
	var a = arr('login',4,'',74,'@@impresa',0,0,0);
	// console.log('precios', a);
	if (a[0].length > 0) {
		$("#pkm").val(a[0][0][1]);
		$("#pfijo").val(a[0][0][2]);
	}
}

$(document).on('change', '.week_chck', function() {
	var day = $(this).attr('day');
	// console.log('day', day);
	if ( $(this).prop('checked') == true ) {
		$("."+day+"").attr('disabled', false);
	}else{
		$("."+day+"").attr('disabled', true);
		$("."+day+"").val('');
	}
});

$(document).on('click', '#addinfohorarios', function() {
	var mon = $("#mon_a").val() +'/'+ $("#mon_c").val();
	var tue = $("#tue_a").val() +'/'+ $("#tue_c").val();
	var wed = $("#wed_a").val() +'/'+ $("#wed_c").val();
	var thu = $("#thu_a").val() +'/'+ $("#thu_c").val();
	var fri = $("#fri_a").val() +'/'+ $("#fri_c").val();
	var sat = $("#sat_a").val() +'/'+ $("#sat_c").val();
	var sun = $("#sun_a").val() +'/'+ $("#sun_c").val();

	var vInfohorario = validarInfohorarios();
	if (!vInfohorario) {
		var a = arr('login',4,'',68,'"'+mon+'","'+tue+'","'+wed+'","'+thu+'","'+fri+'","'+sat+'","'+sun+'",@@impresa',0,0,0);
		console.log(a);
	}else{
		console.log(vInfohorario);
		alert(vInfohorario);
	}

});

$(document).on('click', '#btn_addtipo', function() {

	var vnombre = $("#nom_addtipo").val();
	var valAddtipo = validarAddtipo();
	
	if (valAddtipo == false) {
		var a = arr('login',4,'',64,'1,0,"'+vnombre+'",@@impresa',0,0,0);
		console.log(a);
		$("#nom_addtipo").val('');
		loadtipoprods();
	}else{
		console.log(valAddtipo);
		alert(valAddtipo);
	}
});

function validarAddtipo() {

	if ($("#nom_addtipo").val() == '') {
		return 'Nombre de categoría requerido';
		$("#nom_addtipo").focus();
	}
	return false;
}

$(document).on('click', '.deltipo', function() {
	var vid = $(this).attr('id').substr(1);
	var a = arr('login',4,'',64,'3,'+vid+',"",@@impresa',0,0,0);
	console.log(a);
	loadtipoprods();
});


function loadtipoprods() {
	var tipoprods = arr('login',6,'',65,0,0,1,$("#tipoprods"));
    console.log(tipoprods);
    feather.replace();
}

$(document).on('click', '#btn_addcatego', function() {

	var vnombre = $("#nom_addcatego").val();
	var vtipoprod = $("#tipoprod").val();
	var valAddcatego = validarAddcatego();
	
	if (valAddcatego == false) {
		var a = arr('login',4,'',67,'1,0,"'+vnombre+'",'+vtipoprod+',@@impresa',0,0,0);
		console.log(a);		
		$("#nom_addcatego").val('');
		loadcategorias( vtipoprod );
	}else{
		console.log(valAddcatego);
		alert(valAddcatego);
	}
});

function validarAddcatego() {

	if ($("#tipoprod").val() == '') {
		return 'Debe seleccionar una categoría';
	}

	if ($("#nom_addcatego").val() == '') {
		return 'Nombre de sub categoría requerido';
		$("#nom_addcatego").focus();
	}
	return false;
}

$(document).on('click', '.delcatego', function() {
	var vid = $(this).attr('id').substr(1);
	var vtipoprod = $(this).attr('tprod');
	var a = arr('login',4,'',67,'3,'+vid+',"",0,@@impresa',0,0,0);
	console.log(a);
	loadcategorias( vtipoprod );
});

function loadcategorias( vtipoprod ) {
	var categorias = arr('login',6,'',66,'@@impresa,'+vtipoprod,0,1,$("#categorias"));
    console.log(categorias);
    feather.replace();
}

function loadinfohorario() {
	var a = arr('login',4,'',71,'@@impresa',0,0,0)[0][0];
	var i = 0;
	// console.log(a);
	if ( a[0] != '' || a[1] != '' ) {
		$("#mon_a").val(a[0]); $("#mon_c").val(a[1]);
		$("#chckmon").click();
	}

	if ( a[2] != '' || a[3] != '' ) {
		$("#tue_a").val(a[2]); $("#tue_c").val(a[3]);
		$("#chcktue").click();
	}

	if ( a[4] != '' || a[5] != '' ) {
		$("#wed_a").val(a[4]); $("#wed_c").val(a[5]);
		$("#chckwed").click();
	}

	if ( a[6] != '' || a[7] != '' ) {
		$("#thu_a").val(a[6]); $("#thu_c").val(a[7]);
		$("#chckthu").click();
	}

	if ( a[8] != '' || a[9] != '' ) {
		$("#fri_a").val(a[8]); $("#fri_c").val(a[9]);
		$("#chckfri").click();
	}

	if ( a[10] != '' || a[11] != '' ) {
		$("#sat_a").val(a[10]); $("#sat_c").val(a[11]);
		$("#chcksat").click();
	}

	if ( a[12] != '' || a[13] != '' ) {
		$("#sun_a").val(a[12]); $("#sun_c").val(a[13]);
		$("#chcksun").click();
	}
}

function validarInfohorarios() {
	if ( $("#chckmon").prop('checked') == true) {
		if ($("#mon_a").val() == '' || $("#mon_c").val() == '') {
			return 'Debe ingresar un horario valido para el día lunes';
		}
	}
	if ( $("#chcktue").prop('checked') == true) {
		if ($("#tue_a").val() == '' || $("#tue_c").val() == '') {
			return 'Debe ingresar un horario valido para el día martes';
		}
	}
	if ( $("#chckwed").prop('checked') == true) {
		if ($("#wed_a").val() == '' || $("#wed_c").val() == '') {
			return 'Debe ingresar un horario valido para el día miércoles';
		}
	}
	if ( $("#chckthu").prop('checked') == true) {
		if ($("#thu_a").val() == '' || $("#thu_c").val() == '') {
			return 'Debe ingresar un horario valido para el día jueves';
		}
	}
	if ( $("#chckfri").prop('checked') == true) {
		if ($("#fri_a").val() == '' || $("#fri_c").val() == '') {
			return 'Debe ingresar un horario valido para el día viernes';
		}
	}
	if ( $("#chcksat").prop('checked') == true) {
		if ($("#sat_a").val() == '' || $("#sat_c").val() == '') {
			return 'Debe ingresar un horario valido para el día sábado';
		}
	}
	if ( $("#chcksun").prop('checked') == true) {
		if ($("#sun_a").val() == '' || $("#sun_c").val() == '') {
			return 'Debe ingresar un horario valido para el día domingo';
		}
	}
}



function validar (varreglo,vmodulo) {
	
	var salida = {}
	
		/*VALIDACION FRONT END*/
	
	switch(vmodulo['modulo']) {
		case 'setting':
			if (vmodulo['tip'] == '') {
				err = validarsetting();
				if ( err ) {
					return err;
				}
			}
			
			break;
		default:
			return 'Módulo no Existente';
			break;
	}

	salida = odin(varreglo,"f"+vmodulo['modulo']+"s");
	return salida;

}

function validarsetting() {


	return false;
}

function endDetail(vid,vacc,modulo){

    return false;
}

function cargar(vmodulo,vid) {


	switch(vmodulo['modulo']) {
		case 'setting':
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
}