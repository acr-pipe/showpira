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

    mostrarContador();

    setInterval(function(){
        mostrarContador();
    }, 60000);

});

$(document).on("click",".tipord",function(){
	var vtipo = $(this).attr('tipo');
	console.log(vtipo)
	getordenesbytipo(vtipo);
    mostrarContador();
});

function getordenesbytipo(vtipo) {
	var a = arr('login',6,'',31,vtipo,0,1,$("#getordenesbytipo"));
    console.log(a);
    console.log(arr('login',4,'',31,vtipo,0,0,0));
    
}