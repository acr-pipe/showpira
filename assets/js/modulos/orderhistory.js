$(function(){
	$("#data-table-orderhistorys").dataTable({
        bFilter: false,
        bScrollInfinite: true,
        bSort: false,
        bLengthChange: false,
        order: [],
        bPaginate: false,
        info: false
    });

    var orderhistory = arr('login',6,'',32,'"",""',0,1,$("#orderhistory"));
    console.log(orderhistory);

});

$(document).on("keyup","#vsearch",function(){
	var vsearch = $(this).val();

	var p = arr('login',6,'',32,'"'+vsearch+'",""',0,1,$("#orderhistory"));
    console.log(p);
});

$(document).on("change","#vsearchdate",function(){
	var vsearchdate = $(this).val();

	var a = arr('login',6,'',32,'"","'+vsearchdate+'"',0,1,$("#orderhistory"));
    console.log(a);
});

$(document).on("click",".detailOrd",function(){
	var id = $(this).attr('id').substr(1);
	var fecha = $(this).attr('fecha');
	var isexpress = $(this).attr('isexpress');
	var badge = '';

	if (isexpress == 1) {
		badge = '<span class="badge badge-primary">express</span>'
	}else if (isexpress == 2) {
		badge = '<span class="badge badge-dark">recoge</span>'
	}else{
		badge = '<span class="badge badge-warning">servido</span>'
	}

	$("#numOrd").html(id);
	$("#fechaOrd").html(fecha);
	$("#isexpress").html(badge);



	var orderhistory = arr('login',6,'',34,id,0,1,$("#detalleOrd"));
});

function validar (varreglo,vmodulo) {
	
	var salida = {}
	
		/*VALIDACION FRONT END*/
	
	switch(vmodulo['modulo']) {
		case 'orderhistory':
			if (vmodulo['tip'] == '') {
				err = validarorderhistory();
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

function validarorderhistory() {


	return false;
}

function endDetail(vid,vacc,modulo){

    return false;
}

function cargar(vmodulo,vid) {


	switch(vmodulo['modulo']) {
		case 'orderhistory':
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