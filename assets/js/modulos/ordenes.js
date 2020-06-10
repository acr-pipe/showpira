$(function(){
	$("#data-table-ordeness").dataTable({
        bFilter: false,
        bScrollInfinite: true,
        bSort: false,
        bLengthChange: false,
        order: [],
        bPaginate: false,
        info: false
    });

	showDatos(2);

    mostrarContador();
    
    setInterval(function(){
        mostrarContador();
    }, 60000);

});

$(document).on('click', '.print', function() {
    window.open('facturacion?accion=6&id=1"');
});

function showDatos(videstado) {
    console.log( arr('login',4,'',28,videstado,0,0,0) )
    var p = arr('login',6,'',28,videstado,0,1,$("#ordenLlegada"));
    console.log(p);
}

function rainbow() {
    var letters = 'BCDEF'.split('');
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * letters.length)];
    }
    return color;
}