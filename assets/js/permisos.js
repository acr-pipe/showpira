$(document).ready(function(){

    $.ajax({
            async: false,
            url: '../../resources/permisos.php',
            type: 'POST', 
            data: {id: 1},
            })
            .done(function(data) {
                p = JSON.parse(data);
                alert(p)
            })
            .fail(function(x,y,z) {
                alert(z)
            });

});