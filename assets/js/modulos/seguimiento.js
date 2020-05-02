var map;
var waypts = [];
var origen = { lat: 10.0721746, lng: -84.31173590000003 };
var destino;
var directionsService;
var directionsDisplay;
var posA = -1;

$(function() {
	console.log(arr('login',4,'id,nombre',5,'id > 0 and idtipo = 3',0,0,0))
	arr('login',6,'id,nombre',5,'id > 0 and idtipo = 3',0,1,$("#vidusuario"));
});

$(document).on("click","#consolidar",function(){
	consolidate();
});

$(document).on("click",".makeRoute",function() {
	waypts = [];

	$(".makeRoute:checked").each(function() {
		console.log('checkeds')
		var id = $(this).attr('id').substr(5);
		console.log(id)
		var lat = $("#hlat"+id).val();
		var lng = $("#hlng"+id).val();
		waypts.push({
			location: { lat: parseFloat(lat), lng: parseFloat(lng) },
			stopover: true
		});
	});

	calcRoute();

});

function initMap() {
	directionsService = new google.maps.DirectionsService;
	directionsDisplay = new google.maps.DirectionsRenderer;
	map = new google.maps.Map(document.getElementById('map'), {
		// center: { lat: -34.397, lng: 150.644 },
		zoom: 12,
		streetViewControl: false
	});
	 // center control button
	var centerControlDiv = document.createElement('div');
    var centerControl = new CustomControl(centerControlDiv, map, 'Consolidar', 'Consolidar Ruta');
    centerControlDiv.index = 1;
    map.controls[google.maps.ControlPosition.RIGHT_CENTER].push(centerControlDiv);

     // consolidate control button
	var consolidateControlDiv = document.createElement('div');
    var consolidateControl = new CustomControl(consolidateControlDiv, map, 'Centrar', 'Centrar mapa');
    consolidateControlDiv.index = 1;
    map.controls[google.maps.ControlPosition.RIGHT_CENTER].push(consolidateControlDiv);

	var ordenes = arr('login',4,'',26,'2',0,0,0)[0];
	// destino = { lat: parseFloat(ordenes[ordenes.length-1][12]), lng: parseFloat(ordenes[ordenes.length-1][13]) };
	destino = origen;
	for (var i = 0; i < ordenes.length; i++) {
		var contentString = 
			'<div class="input-group">'+
				'<input type="checkbox" class="makeRoute" id="order'+ordenes[i][0]+'">'+
				'<input type="hidden" id="hlat'+ordenes[i][0]+'" value="'+ordenes[i][12]+'">'+
				'<input type="hidden" id="hlng'+ordenes[i][0]+'" value="'+ordenes[i][13]+'">'+
				'<label>Seleccionar</label>'+
			'</div>';

		var infowindow = new google.maps.InfoWindow({
		content: contentString
		});

		var marker = new google.maps.Marker({
			position: { lat: parseFloat(ordenes[i][12]), lng: parseFloat(ordenes[i][13]) },
			animation: google.maps.Animation.DROP,
			draggable: true,
			map: map,
		});

		infowindow.open(map, marker);
	}
	directionsDisplay.setMap(map);

    // Try HTML5 geolocation.
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
        var pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude
        };
        map.setCenter(pos);
      }, function() {
        handleLocationError(true, infoWindow, map.getCenter());
      });
    } else {
      // Browser doesn't support Geolocation
      handleLocationError(false, infoWindow, map.getCenter());
    }

    // calcRoute();

}

function CustomControl(controlDiv, map, name, title) {
	// Set CSS for the control border.
    var controlUI = document.createElement('div');
    controlUI.style.backgroundColor = '#fff';
    controlUI.style.border = '2px solid #fff';
    controlUI.style.borderRadius = '3px';
    controlUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
    controlUI.style.cursor = 'pointer';
    controlUI.style.marginBottom = '22px';
    controlUI.style.textAlign = 'center';
    controlUI.title = title;
    controlDiv.appendChild(controlUI);

    // Set CSS for the control interior.
    var controlText = document.createElement('div');
    controlText.style.color = 'rgb(25,25,25)';
    controlText.style.fontFamily = 'Roboto,Arial,sans-serif';
    controlText.style.fontSize = '16px';
    controlText.style.lineHeight = '38px';
    controlText.style.paddingLeft = '5px';
    controlText.style.paddingRight = '5px';
    controlText.innerHTML = name;
    controlUI.appendChild(controlText);

    switch(name) {
    	case 'Centrar':
			controlUI.addEventListener('click', function() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
					var pos = {
						lat: position.coords.latitude,
						lng: position.coords.longitude
					};
					map.setCenter(pos);
				}, function() {
					handleLocationError(true, infoWindow, map.getCenter());
				});
			} else {
				// Browser doesn't support Geolocation
				handleLocationError(false, infoWindow, map.getCenter());
			}
			});
    		break;
    	case 'Consolidar':
    		controlUI.addEventListener('click', function() {
    			$('#consolidate-modal').modal('show');
    		});
    		break;
    	default:
    		break;
    }
}

function consolidate() {
	var idresponsable = $("#vidusuario").val();
	var ruta = arr('login',4,'',36,'0,'+idresponsable,0,0,0);
	console.log(ruta)
	if (ruta['succed']) {
		$(".makeRoute:checked").each(function() {
			var id = $(this).attr('id').substr(5);
			console.log(id);
			arr('login',4,'',37,'0,'+ruta[0][0]+','+id,0,0,0)
		});
		$('#consolidate-modal').modal('hide');
		initMap();
	}else{
		console.log(ruta[0]['ERROR'])
	}
}

function calcRoute() {
	var start = origen;
	var end = destino;
	var request = {
		origin: start,
		destination: end,
		waypoints: waypts,
    	optimizeWaypoints: true,
		travelMode: 'DRIVING'
	};
	directionsService.route(request, function(result, status) {
		if (status == 'OK') {
			console.log(result, status)
			directionsDisplay.setDirections(result);
		}
	});
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	infoWindow.setPosition(pos);
	infoWindow.setContent(browserHasGeolocation ?
		'Error: The Geolocation service failed.' :
		'Error: Your browser doesn\'t support geolocation.');
	infoWindow.open(map);
}

function addMarker(location) {
	console.log(location)
	var marker = new google.maps.Marker({
		position: { lat: 10.074727, lng: -84.289706 },
		animation: google.maps.Animation.DROP,
		map: map
	});
}

function validar (varreglo,vmodulo) {
	
	var salida = {}
	
		/*VALIDACION FRONT END*/
	
	switch(vmodulo['modulo']) {
		case 'seguimiento':
			if (vmodulo['tip'] == '') {
				err = validarseguimiento();
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

function validarseguimiento() {


	return false;
}

function endDetail(vid,vacc,modulo){

    return false;
}

function cargar(vmodulo,vid) {


	switch(vmodulo['modulo']) {
		case 'seguimiento':
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