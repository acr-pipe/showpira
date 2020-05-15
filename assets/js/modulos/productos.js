Dropzone.autoDiscover = false;
var myDropzone;

$(function(){

	myDropzone = new Dropzone("#img-upload", {
		url: '../upload.php',
		autoProcessQueue:false,
		maxFilesize: 6,
		maxFiles: 5,
		uploadMultiple: true,
		resizeWidth: 850,
		acceptedFiles: 'image/*, video/*',
		addRemoveLinks:true,
		accept: function(file, done) {
	    if (file.name == "user.png" || file.name == "avatar.svg" || file.name == "signin.svg") {
	      done("Naha, tú no!.");
	    }
	    	else { done(); }
	  	},
		init: function() {
		  this.on("uploadprogress", function(file, progress) {
		    console.log("File progress", progress);
		  });
		}
	})

	$("#data-table-productoss").dataTable({
        bFilter: false,
        bScrollInfinite: true,
        bSort: false,
        bLengthChange: false,
        order: [],
        bPaginate: false,
        info: false
    });
    $("#imgInp").change(function(){
		readURL(this);
	});

	var extc = arr('login',4,'',29,'"","0,10", @@impresa',0,0,0);
    console.log(extc);
    extc = extc[0];
    if (extc.length > 0) {
        var tabla = $("#data-table-productoss").DataTable();
        tabla.destroy();
        arr('login',6,'',29,'"","0,10", @@impresa',0,1,$("#getProductos"));
		$("#data-table-productoss").DataTable();
    }else{
        arr('login',6,'',29,'"","0,10", @@impresa',0,1,$("#getProductos"));
    }
});


$(document).ready(function() {
	var a = arr('login',4,'*',62,'id > 0 and idsucursal = @@impresa',0,0,0)[0];
	// console.log(a)
	var categorias = '<option value="0">Seleccione...</option>';

	for (var i = 0; i < a.length; i++) {
		categorias += '<option value="'+a[i][0]+'">'+a[i][1]+'</option>';
	}

	$("#tipo_prod").html(categorias);
});

// Opciones productos
var detail = [];
$(document).on('click','.optn', function() {
	var id = $(this).attr('id').substr(1);
	$("#hidprod").val(id);
	$('#modal_producto_detail').modal('show');
	$("#text_category").attr('disabled', false);
	$("#add_category").attr('disabled', false);
	$("#multiple_option").prop('checked', false);
	$("#multiple_option").attr('disabled', true);
	$("#text_option").val('').attr('disabled', true);
	$("#text_value").val('').attr('disabled', true);
	$("#add_subcategory").attr('disabled', true);
	$("#list_categories").html('');
	$("#list_subcategories").html('');
	$("#hidden_category").val('');
	setTimeout(function() {
		$("#text_category").focus();
	}, 500);
});

$(document).on('click', '#add_category', function() {
	var category = $("#text_category").val();
	var validation = pipe_validator('category');
	var formated_category = category.replace(' ', '_');
	console.log(validation);
	if (!validation) {
		// hidden category
		$("#hidden_category").val(category);
		// insert category to #list_categories
		$("#list_categories").append('<li class="list-group-item" id="list_' + formated_category + '">' +
          	category +
          	'<span data-feather="x-circle" class="der delsub text-danger pointer delete_category" id="delete_' + formated_category + '" style="font-size: 1px"></span>' +
        '</li>');
		$("#text_category").val('');
		$(this).attr('disabled', true);
		$("#text_category").attr('disabled', true);
		// enabling list_subcategories
		$("#multiple_option").attr('disabled', false);
		$("#text_option").attr('disabled', false);
		$("#text_value").attr('disabled', false);
		$("#add_subcategory").attr('disabled', false);
		$("#text_option").focus();
	}else{
		console.log(validation);
	}
});

$(document).on('click', '.delete_category', function() {
	var id = $(this).attr('id').substr(7);
	$("#list_" + id).remove();
	$("#multiple_option").prop('checked', false).attr('disabled', true);
	$("#text_option").val('').attr('disabled', true);
	$("#text_value").val('').attr('disabled', true);
	$("#add_subcategory").attr('disabled', true);
	$("#text_category").attr('disabled', false).focus();
	$("#add_category").attr('disabled', false);
	$("#hidden_category").val('');
	$("#list_subcategories").html('');
});

$(document).on('click', '#add_subcategory', function() {
	var multiple = $("#multiple_option").is(':checked');
	var option = $("#text_option").val();
	var value = $("#text_value").val();
	var category = $("#hidden_category").val();
	var validation = pipe_validator('subcategory');
	var formated_option = option.replace(' ', '_');
	console.log(validation);
	if (!validation) {
		if (multiple) {
			$("#list_subcategories").append('<li class="list-group-item pb-0 category'+category+'">' +
				'<div class="row container">' +
					'<div class="col-1">' +
						'<div class="form-group">' +
							'<input class="form-check-input" type="checkbox" id="check_'+formated_option+'">' +
							'<label class="form-check-label"></label>' +
						'</div>' +
					'</div>' +
					'<div class="col-5">' +
						'<label class="name_subcategory">' + option + '</label>' +
					'</div>' +
					'<div class="col-5">' +
						'<label class="value_subcategory">₡ ' + value + '</label>' +
					'</div>' +
					'<div class="col-1">' +
						'<span data-feather="x-circle" id="deletesub_' + formated_option + '" class="der delsub text-danger pointer delete_subcategory" style="font-size: 1px"></span>' +
					'</div>' +
				'</div>' +
			'</li>');
		} else {
			$("#list_subcategories").append('<li class="list-group-item pb-0 category'+category+'" id="subcategory_' + formated_option + '">' +
				'<div class="row container">' +
					'<div class="col-1">' +
						'<div class="form-group">' +
							'<input class="form-check-input" type="radio" name="radio_subcategories" id="check_'+formated_option+'">' +
							'<label class="form-check-label"></label>' +
						'</div>' +
					'</div>' +
					'<div class="col-5">' +
						'<label class="name_subcategory">' + option + '</label>' +
					'</div>' +
					'<div class="col-5">' +
						'<label class="value_subcategory" id="value_' + formated_option + '">₡ ' + value + '</label>' +
					'</div>' +
					'<div class="col-1">' +
						'<span data-feather="x-circle" id="deletesub_' + formated_option + '" class="der delsub text-danger pointer delete_subcategory" style="font-size: 1px"></span>' +
					'</div>' +
				'</div>' +
			'</li>');
		}
		feather.replace();
		// insert to array detail
		detail.push(option+','+value);
		// clear fields
		$("#text_option").val('');
		$("#text_value").val('');
		$("#text_option").focus();
	}
});

$(document).on('click', '.delete_subcategory', function() {
	var id = $(this).attr('id').substr(10);
	var value = $("#value_" + id).text();
	var arr = id.replace('_', ' ') + ',' + value;
	console.log(id, value, arr);
	// pop from array
	// remove list
	var i = detail.indexOf(arr);
	console.log(i);
	detail.splice(i, 1);
	console.log(detail);
	$("#subcategory_" + id).remove();
});

$(document).on('click', '#save_categories', function() {
	console.log('save categories');
	var idproducto = $("#hidprod").val();
	var category = $("#hidden_category").val();
	console.log(idproducto,category);
	var db_category = arr('login',4,'',103,'1,0,'+idproducto+',"'+category+'"',0,0,0);
	console.log(db_category)
	if (db_category['succed']) {
		console.log(detail)
		for (var i = 0; i < detail.length; i++) {
			var option = detail[i].split(',')[0];
			var value = detail[i].split(',')[1];
			var multiple = $("#multiple_option").is(':checked') ? 1 : 0;
			console.log('checking option', option)
			var isChecked = $("#check_"+option.replace(' ','_')).is(':checked') ? 1 : 0;
			console.log(option,value,multiple,isChecked);
			var db_subcategory = arr('login',4,'',101,'1,0,'+db_category[0][0][0]+',"'+option+'",'+value+','+multiple+','+isChecked,0,0,0);
			console.log(db_subcategory);
			if (db_subcategory['succed']) {
				console.log('success');
			}
		}
		detail = [];
		$("#text_category").attr('disabled', false);
		$("#add_category").attr('disabled', false);
		$("#list_categories").html('');
		$("#multiple_option").attr('checked', false);
		$("#list_subcategories").html('');
		$("#hidden_category").val(0);
		$("#text_category").focus();
		$("#multiple_option").attr('disabled',true);
		$("#text_option").attr('disabled',true);
		$("#text_value").attr('disabled',true);
		$("#add_subcategory").attr('disabled',true);
	}else{
		console.log(db_category[0]['ERROR']);
	}
});

// $(document).on('click', '#addToDetail', function() {
// 	var detalle = $("#vdetalle").val();
// 	var valor = $("#vvalor").val();
// 	var vid = 1;
// 	// var formula = $("[name=]")
// 	var tabla = $("#data-table-detalles").DataTable();
// 	// agrega a base de datos
// 	var detalleproducto = arr('login',4,'',101,'1,0,' + vid + ',"' + detalle + '",' + valor + ',0');
// 	console.log(detalleproducto);
// 	if (detalleproducto['succed']) {
// 		// agrega a la table detalles
// 		tabla.destroy();
// 		if (detalle != '' && valor != '') {
// 			$("#getDetalles").append('<tr>' +
// 				'<td>' + detalle + '</td>' +
// 				'<td>' + valor + '</td>' +
// 				'<td style="width: 40% !important">' +
// 					'<div class="row form-check">' +
// 						'<input class="form-check-input formula" type="radio" name="formula" id="s' + detalleproducto[0][0][0] + '" value="1" checked>' +
// 						'<label class="form-check-label" for="s' + detalleproducto[0][0][0] + '">' +
// 							'Sumar al precio del producto' +
// 						'</label>' +
// 					'</div>' +
// 					'<div class="row form-check">' +
// 						'<input class="form-check-input formula" type="radio" name="formula" id="r' + detalleproducto[0][0][0] + '" value="2">' +
// 						'<label class="form-check-label" for="r' + detalleproducto[0][0][0] + '">' +
// 							'Restar al precio del producto' +
// 						'</label>' +
// 					'</div>' +
// 				'</td>' +
// 			'</tr>');
// 			$("#data-table-detalles").DataTable();
// 			$("#vdetalle").val('');
// 			$("#vvalor").val('');
// 		}	
// 	} else {
// 		console.log(detalleproducto[0]['ERROR']);
// 	}
// });

// $(document).on('change', '[name=formula]', function() {
// 	var id = $(this).attr('id').substr(1);
// 	var formula = $(this).val();
// 	var actdetalle = arr('login',4,'',101,'2,' + id + ',0,"",0,' + formula);
// 	console.log(actdetalle);
// 	if (actdetalle['succed']) {
// 		console.log('succed')
// 	} else {
// 		console.log(actdetalle[0]['ERROR']);
// 	}
// });

$(document).on('change', '#tipo_prod', function() {

	var vtipo = $(this, 'option selected').val();
	// console.log(vtipo);

	if( vtipo != 0) {
		$("#sub_catego").attr('disabled', false);
		var b = arr('login',4,'*',57,'idempresa = @@impresa and tipoprod = '+vtipo,0,0,0)[0];
		console.log(b)
		var subcategorias = '<option value="0">Seleccione...</option>';

		for (var i = 0; i < b.length; i++) {
			subcategorias += '<option value="'+b[i][0]+'">'+b[i][1]+'</option>';
		}

		$("#sub_catego").html(subcategorias);
	}else{
		$("#sub_catego").attr('disabled', true);
		$("#sub_catego").html('');
	}
});

$(document).on('keyup', '#prec_prod', function() {
	var ivi = $("#ivi_prod").val() == '' ? 13 : parseInt($("#ivi_prod").val());
	var precio = $(this).val() == '' ? 0 : parseInt($(this).val());
	var impuesto = $("#imv_prod").val() == '' ? 0 : parseInt($("#imv_prod").val());
	var total = $("#tot_prod").val() == '' ? 0 : parseInt($("#tot_prod").val());
	totalizar(precio,impuesto,ivi,total);
});

$(document).on('keyup', '#imv_prod', function() {
	var ivi = $("#ivi_prod").val() == '' ? 13 : parseInt($("#ivi_prod").val());
	var precio = $("#prec_prod").val() == '' ? 0 : parseInt($("#prec_prod").val());
	var impuesto = $(this).val() == '' ? 0 : parseInt($(this).val());
	var total = $("#tot_prod").val() == '' ? 0 : parseInt($("#tot_prod").val());
	totalizar(precio,impuesto,ivi,total);
});

$(document).on('keyup', '#ivi_prod', function() {
	var ivi = $(this).val() == '' ? 13 : parseInt($(this).val());
	var precio = $("#prec_prod").val() == '' ? 0 : parseInt($("#prec_prod").val());
	var impuesto = $("#imv_prod").val() == '' ? 0 : parseInt($("#imv_prod").val());
	var total = $("#tot_prod").val() == '' ? 0 : parseInt($("#tot_prod").val());
	totalizar(precio,impuesto,ivi,total);
});

$(document).on('keyup', '#tot_prod', function() {
	var ivi = $("#ivi_prod").val() == '' ? 13 : parseInt($("#ivi_prod").val());
	var precio = $("#prec_prod").val() == '' ? 0 : parseInt($("#prec_prod").val());
	var impuesto = $("#imv_prod").val() == '' ? 0 : parseInt($("#imv_prod").val());
	var total = $(this).val() == '' ? 0 : parseInt($(this).val());
	totalizar(precio,impuesto,ivi,total);
});

$(document).on('change', '#chkivi_prod', function() {
	var ivi = $("#ivi_prod").val() == '' ? 13 : parseInt($("#ivi_prod").val());
	var precio = $("#prec_prod").val() == '' ? 0 : parseInt($("#prec_prod").val());
	var impuesto = $("#imv_prod").val() == '' ? 0 : parseInt($("#imv_prod").val());
	var total = $("#tot_prod").val() == '' ? 0 : parseInt($("#tot_prod").val());
	totalizar(precio,impuesto,ivi,total);
});

function totalizar(pre, imv, ivi, tot) {
	var chkivi = $("#chkivi_prod").is(':checked') ? 1 : 0;
	console.log(pre, imv, ivi, tot, chkivi);
	var impuesto = pre * (ivi/100);
	var total = 0;
	if (chkivi == 1) {
		$("#ivi_prod").attr('disabled', false);
		console.log('impuesto: ' + impuesto);
		$("#imv_prod").val(impuesto);
	}else{
		$("#ivi_prod").attr('disabled', true);
		$("#imv_prod").val('');
	}
	total = chkivi != 0 ? pre + impuesto : pre;
	console.log('total: ' + total);
	$("#tot_prod").val(total);
}

$(document).on('change', '#ivi_prod', function() {
	var id = $(this).is(':checked');
});

$(document).on("keyup","#vsearch",function(){
	var vsearch = $(this).val();
	var extc = arr('login',4,'',29,'"'+vsearch+'","0,10", @@impresa',0,0,0);
    console.log(extc);
    extc = extc[0];
    if (extc.length > 0) {
        var tabla = $("#data-table-productoss").DataTable();
        tabla.destroy();
        arr('login',6,'',29,'"'+vsearch+'","0,10", @@impresa',0,1,$("#getProductos"));
		$("#data-table-productoss").DataTable();
    }else{
        arr('login',6,'',29,'"'+vsearch+'","0,10", @@impresa',0,1,$("#getProductos"));
    }
});

$(document).on("click",".rdItem",function(){
	var id = $(this).attr('id').substr(1);
	$(".mod").attr('id','m'+id);
	$(".del").attr('id','d'+id);
	$(".optn").attr('id','o'+id);
});

$(document).on('click', '.rmimg', function() {
	var id = $(this).attr('id').substr(1);
	var a = arr('login',4,'',81,id,0,0,0)[0][0];
	console.log(a[0]);
	if (a[0] > 0) {
		$("#img"+id).remove();
		notification('Imagen eliminada correctamente', 'success', 3500);
		$("#img-upload").html('<div class="dz-default dz-message"><span>Arrastre imágenes aquí para subirlas</span></div>');
	}else{
		notification('No se puede eliminar esta imagen', 'danger', 3500);
	}

});

// $(document).on('mouseover', '.video', function() {
// 	var id = $(this).attr('id').substr(1);
// 	var src = $(this).attr('src').substr(-12);
// 	var link = '../assets/imgs/'+src;
// 	$("._video").attr('src', link);
	// $('#videoPreview').modal('show');
// });

$(document).on("click",".mod",function(){
	var id = $(this).attr('id') == undefined ? 0 : $(this).attr('id').substr(1);
	if (id != 0) {
		var a = arr('login',4,'*',1,'id = '+id,0,0,0)[0];
		console.log(a);
		var b = arr('login',4,'*, SUBSTRING(url, -3, 3)',2,'idproducto = '+ id +' and id > 0',0,0,0)[0];
		console.log(b);
		var str = '<input type="hidden" name="idproducto">';
		for (var i = 0; i < b.length; i++) {
			if (b[i][3] != 'mp4') {
			str += '<div id="img'+b[i][0]+'" class="dz-preview dz-image-preview" align="center">'+
						'<div class="dz-image">'+
							'<img data-dz-thumbnail width="100%" src="'+b[i][2]+'">'+
						'</div>'+
						'<a class="rmimg" style="color: red; cursor: pointer" id="i'+b[i][0]+'" href="#!" data-dz-remove="">Eliminar</a>'+
					'</div>';
			}else{
				str += '<div id="img'+b[i][0]+'" class="dz-preview dz-image-preview" align="center">'+
						'<div class="dz-image video" id="v'+b[i][0]+'" src="'+b[i][2]+'" data-toggle="popover" title="Popover title" data-content="And heres very engaging. Right?" tabindex="0" data-trigger="focus" role="button">'+
							'<img data-dz-thumbnail width="100%" height="auto" src="../assets/img/prev.svg">'+
						'</div>'+
						'<a class="rmimg" style="color: red; cursor: pointer" id="i'+b[i][0]+'" href="#!" data-dz-remove="">Eliminar</a>'+
					'</div>';
			}
		}
		$("#img-upload").html(str);
		
		if (a.length > 0) {
			var hid_ = a[0][0];
			var nom_ = a[0][1];
			var des_ = a[0][2];
			var pre_ = a[0][3];
			var ivi_ = a[0][4];
			var tip_ = a[0][5];
			// console.log('ivi_',ivi_);
			if (ivi_ > 0) {
				$("#chkivi_prod").prop('checked', true);
				$("#ivi_prod").prop('disabled', false);
			}else{
				$("#chkivi_prod").prop('checked', false);
				$("#ivi_prod").prop('disabled', true);
			}

			$("#hidprod").val(hid_);
			$("#nom_prod").val(nom_);
			$("#desc_prod").val(des_);
			$("#prec_prod").val(parseFloat(pre_).formatMoney(2,'.',''));
			$("#tipo_prod").val(tip_);
			$("#ivi_prod").val(ivi_);
			var imv_ = (parseFloat(pre_) * (parseFloat(ivi_)/100));
			$("#imv_prod").val(imv_.formatMoney(2,'.',''));
			var tot_ = (parseFloat(pre_) + parseFloat(imv_));
			$("#tot_prod").val(tot_.formatMoney(0,'.',''));

			$("#addProd").text('Editar');
			$("#addProd").removeClass('btn-primary');
			$("#addProd").addClass('btn-warning');
			$("#addProd").attr('id','editProd');
		}else{
			notification('No se puede cargar la informacion de este producto', 'danger', 3500);
		}
	}else{
		notification('Debe primero seleccionar un producto', 'danger', 3500);
	}

});

$(document).on("click","#cleanProd",function(){
	cleanProd();
});

$(document).on("click","#editProd",function(){
	var vid = $("#hidprod").val();
	var nom_ = $("#nom_prod").val();
	var des_ = $("#desc_prod").val();
	var pre_ = $("#prec_prod").val();
	var tip_ = $("#tipo_prod").val();
	var cat_ = $("#sub_catego").val();
	var ivi_ = $("#ivi_prod").val() == '' ? 13 : $("#ivi_prod").val();
    
	var valAddProd = validaAddProd();
	if (!valAddProd) {
		if ($(".dz-preview").length > 0) {
			$("input[name='idproducto']").val(vid);
			myDropzone.processQueue();
		}else{
			// arr('login',7,1,133,'','null,\"../assets/imgupload/cars/car.png\",'+vid,0,0);
			notification('No se subió la imagen!', 'danger', 3500);
		}
		var a = arr('login',4,'',11,'2,'+vid+',"'+nom_+'","'+des_+'",'+pre_+','+ivi_+','+tip_+','+cat_+',"0000-00-00 00:00:00","0000-00-00 00:00:00",0,"",0,@@impresa',0,0,0);
		console.log(a);

		$("#editProd").text('Agregar');
		$("#editProd").removeClass('btn-warning');
		$("#editProd").addClass('btn-primary');
		$("#editProd").attr('id','addProd');
	    cleanProd();

		var p = arr('login',6,'',29,'"","0,10", @@impresa',0,1,$("#getProductos"));
	    console.log(p);
	}else{
		notification(valAddProd, 'danger', 3500);
	}
});

$(document).on('change', '.btn-file :file', function() {
	var input = $(this),
		label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
	input.trigger('fileselect', [label]);
	});

$('.btn-file :file').on('fileselect', function(event, label) {
    
    var input = $(this).parents('.input-group').find(':text'),
        log = label;
    
    if( input.length ) {
        input.val(log);
    } else {
        if( log ) alert(log);
    }
});

$(document).on("click",".del",function(){
	var id = $(this).attr('id') == undefined ? 0 : $(this).attr('id').substr(1);
	if (id != 0) {
		var a = arr('login',4,'',11,'3,'+vid+',"","",0,0,0,0,"0000-00-00 00:00:00","0000-00-00 00:00:00",0,"",0,@@impresa',0,0,0);
		console.log(a);
		var p = arr('login',6,'',29,'"","0,10", @@impresa',0,1,$("#getProductos"));
	    console.log(p);
	}else{
		notification('Debe primero seleccionar un producto', 'danger', 3500);
	}
});

$(document).on("click","#addProd",function(){
	var nom_ = $("#nom_prod").val();
	var des_ = $("#desc_prod").val();
	var pre_ = $("#prec_prod").val();
	var imp_ = $("#ivi_prod").val() == '' ? 0 : $("#ivi_prod").val();
	var tip_ = $("#tipo_prod option:selected").val();
	var cat_ = $("#sub_catego option:selected").val();

	var valAddProd = validaAddProd();
	if (!valAddProd) {
		console.log('1,0,"'+nom_+'","'+des_+'",'+pre_+','+imp_+','+tip_+','+cat_+',"0000-00-00 00:00:00","0000-00-00 00:00:00",0,@@impresa');
		var a = arr('login',4,'',11,'1,0,"'+nom_+'","'+des_+'",'+pre_+','+imp_+','+tip_+','+cat_+',"0000-00-00 00:00:00","0000-00-00 00:00:00",0,"",0,@@impresa',0,0,0);
		if (a['succed']) {
			console.log('SI IMG');
			console.log('IMG',$(".dz-preview").length);
			if ($(".dz-preview").length > 0) {
				$("input[name='idproducto']").val(a[0][0][0]);
				myDropzone.processQueue();
				$("#img-upload").html('<div class="dz-default dz-message"><span>Arrastre imágenes aquí para subirlas</span></div>');
			}else{
				// arr('login',7,1,133,'','null,\"../assets/imgupload/cars/car.png\",'+vid,0,0);
				notification('No se subió la imagen!', 'danger', 3500);
			}
			arr('login',6,'',29,'"","0,10", @@impresa',0,1,$("#getProductos"));
	    	cleanProd();
	    	notification('Producto agregado correctamente', 'success', 3500);
		} else {
			notification('No se pudo agregar este producto', 'danger', 3500);
			console.log(a['error']);
		}
	}else{
		notification(valAddProd, 'danger', 3500);
	}

});

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function (e) {
            $('#img-upload').attr('src', e.target.result);
        }
        
        reader.readAsDataURL(input.files[0]);
    }
}

function cleanProd() {
	$("#hidprod").val('');
	$("#nom_prod").val('');
	$("#desc_prod").val('');
	$("#prec_prod").val('');
	$("#tipo_prod").val(0);
	$("#sub_catego").val(0);
	$("#tot_prod").val('');
	$("#imv_prod").val('');
	$("#ivi_prod").val('');
	$("#img-upload").html('<div class="dz-default dz-message"><span>Arrastre imágenes aquí para subirlas</span></div>');
	$("#chkivi_prod").prop('checked', false);
	$(".rdItem").prop('checked', false);
	$("#ivi_prod").attr('disabled', true);
	$(".mod").attr('id',0);
	$(".del").attr('id',0);


	$("#editProd").text('Agregar');
	$("#editProd").removeClass('btn-warning');
	$("#editProd").addClass('btn-primary');
	$("#editProd").attr('id','addProd');	
}


function validaAddProd() {

	if ($("#nom_prod").val() == '') {
		return 'Nombre de producto requerido';
		$("#nom_prod").focus();
	}

	if ($("#desc_prod").val() == '') {
		return 'Descripción de producto requerida';
		$("#desc_prod").focus();
	}

	if ($("#prec_prod").val() == '') {
		return 'Precio de producto requerido';
		$("#prec_prod").focus();
	}

	if ($("#tipo_prod").val() == '') {
		return 'Tipo de producto requerido';
		$("#tipo_prod").focus();
	}

	if ($("#imgurl").val() == '') {
		return 'Imagen de producto requerida';
	}

	if ($("#tipo_prod option:selected").val() == 0) {
		return 'Debe seleccionar una categoría';
	}
	if ($("#sub_catego option:selected").val() == 0) {
		return 'Debe seleccionar una sub categoría';
	}

	return false;
}