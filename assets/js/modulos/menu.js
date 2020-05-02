$(function(){
	'use strict'
  	feather.replace();

    $(".nav-link").click(function(){
    	$(".nav-link").removeClass('active');
    	$(this).addClass('active');
    	// return false;
    });


    $(document).ready( function() {
        var a = arr('login',4,'nombre',5,'id = @@usr',0,0,0)[0][0];
        // console.log('usuario', a);
        $("#nuser").html(a);
    });

    // obtener direccion
    var dir = window.location.href
    dir = dir.split('/');
    dir = dir[5];

    switch(dir) {
    	case 'main':
    	case 'ordenes':
    	case 'allordenes':
    	case 'orderhistory':
    	case 'productos':
    	case 'reportes':
    		$(".nav-link").removeClass('active');
    		$("a.nav-link[href='"+dir+"']").addClass('active');
    		break;
    	default:
    		$(".nav-link").removeClass('active');
    		break;
    }

});