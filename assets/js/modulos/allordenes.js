$(function(){
	$("#data-table-allordeness").dataTable({
        bFilter: false,
        bScrollInfinite: true,
        bSort: false,
        bLengthChange: false,
        order: [],
        bPaginate: false,
        info: false
    });

	getordenesbytipo(0);

    setInterval(function(){
        mostrarContador();
    }, 60000);

});

$(document).on("click",".tipord",function(){
	var vtipo = $(this).attr('tipo');
	console.log(vtipo)
	getordenesbytipo(vtipo);
});

function getordenesbytipo(vtipo) {
	var a = arr('login',6,'',31,vtipo,0,1,$("#getordenesbytipo"));
    console.log(a);
    console.log(arr('login',4,'',31,vtipo,0,0,0));
    mostrarContador();
}

$(document).on("click",".rdDeliver",function(){
    var viddriver = $(this).attr('id');
    $("#asignDelivery").attr('viddriver',viddriver);

    if ($(".rdDeliver").length > 0) {
        $("#asignDelivery").attr('disabled',false);
    }
});

$(document).on("click",".asign",function(){
    var a = arr('login',6,'',43,'3,""',0,1,$("#showDelivery"));
    console.log(a);
    var idorden = $(this).attr('id').substr(1);
    var estado = $(this).attr('estado');
    var accion = $(this).attr('accion');
    $("#asignDelivery").attr('idorden',idorden);
    $("#asignDelivery").attr('estado',estado);
    $("#asignDelivery").attr('accion',accion);
    $("#asignDelivery").attr('disabled',true);
    if (accion == 'enviar') {
        $("#aDeliver").modal('show');
    }else{
        console.log(arr('login',4,'',30,idorden+',4',0,0,0));
        getordenesbytipo(0);
    }

});

$(document).on("click","#asignDelivery",function(){
    var idorden = $(this).attr('idorden');
    var estado = $(this).attr('estado');
    var accion = $(this).attr('accion');
    var viddriver = $(this).attr('viddriver');
    if (accion == 'enviar') {
        estado = 3;
    }else if (accion == 'entregar' || accion == 'servir' || accion == 'completar') {
        estado = 4;
    }else{
        estado = 5;
    }

    if (viddriver != '') {
        var a = arr('login',4,'',45,idorden+','+estado+',"'+viddriver+'"',0,0,0);
        console.log(a);
        if (a['succed']) {
            $("#aDeliver").modal('hide');
            getordenesbytipo(0);
        }
    }else{
        notification('Debe seleccionar un repartidor','danger',3500);
    }

});