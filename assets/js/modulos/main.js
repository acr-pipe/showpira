$(function() {
    console.log(arr('login',4,'',26,2,0,0,0));
    console.log(arr('login',4,'',26,3,0,0,0));
    console.log(arr('login',4,'',26,4,0,0,0));

    load();
    
    setInterval(function() {
        arr('login',6,'',26,2,0,1,$("#ordenLlegada"));
        arr('login',6,'',26,3,0,1,$("#ordenEnviada"));
        arr('login',6,'',26,4,0,1,$("#ordenCompleta"));
        mostrarContador();
    }, 15000);

});

$(document).on("keyup","#vsearch",function(){
    var vsearch = $(this).val();

    var p = arr('login',6,'',43,'3,"'+vsearch+'"',0,1,$("#showDelivery"));
    console.log(p);
});

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
        load();
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
            load();
        }
    }else{
        notification('Debe seleccionar un repartidor','danger',3500);
    }

});

function load() {
    arr('login',6,'',26,2,0,1,$("#ordenLlegada"));
    arr('login',6,'',26,3,0,1,$("#ordenEnviada"));
    arr('login',6,'',26,4,0,1,$("#ordenCompleta"));
    mostrarContador();
}


function endDetail(id,acc,modulo) {
    if (acc == 1) {
        $("#vmonto").attr('disabled',true);
    }
}

function rainbow() {
    var letters = 'BCDEF'.split('');
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * letters.length)];
    }
    return color;
}