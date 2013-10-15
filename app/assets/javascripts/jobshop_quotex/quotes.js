// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//material cost
$(function (){
	$('#quote_material_wt').change(function(){
		$('#quote_material_cost').val(getMaterialCost());
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_material_unit_price').change(function(){
		$('#quote_material_cost').val(getMaterialCost());
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
//cal unit price

$(function (){
	$('#quote_machining_cost').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_grinding_cost').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_plating_cost').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_surface_finish_cost').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_heat_treat_cost').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_insp_cost').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_mgmt_cost').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_packing_cost').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_shipping_cost').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_misc_cost').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_tax').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});
$(function (){
	$('#quote_profit').change(function(){
		$('#quote_unit_price').val(sumUnitTotal());
	});
});


//function
function getMaterialCost() {
	var material_unit_price = parseFloat($('#quote_material_unit_price').val());
	var material_wt = parseFloat($('#quote_material_wt').val());
	if ($.isNumeric(material_unit_price) && $.isNumeric(material_wt)) {
		return ((material_unit_price * material_wt)/1000.00).toFixed(4);
	};
	return;
};

function sumUnitTotal() {
	var total = 0.0000;
	if ($.isNumeric($('#quote_material_cost').val())) {
		total += parseFloat($('#quote_material_cost').val());
	};
	if ($.isNumeric($('#quote_machining_cost').val())) {
		total += parseFloat($('#quote_machining_cost').val());
	};
	if ($.isNumeric($('#quote_grinding_cost').val())) {
		total += parseFloat($('#quote_grinding_cost').val());
	};
	if ($.isNumeric($('#quote_plating_cost').val())) {
		total += parseFloat($('#quote_plating_cost').val());
	};
	if ($.isNumeric($('#quote_heat_treat_cost').val())) {
		total += parseFloat($('#quote_heat_treat_cost').val());
	};
	if ($.isNumeric($('#quote_surface_finish_cost').val())) {
		total += parseFloat($('#quote_surface_finish_cost').val());
	};
	if ($.isNumeric($('#quote_insp_cost').val())) {
		total += parseFloat($('#quote_insp_cost').val());
	};
	if ($.isNumeric($('#quote_mgmt_cost').val())) {
		total += parseFloat($('#quote_mgmt_cost').val());
	};
	if ($.isNumeric($('#quote_packing_cost').val())) {
		total += parseFloat($('#quote_packing_cost').val());
	};
	if ($.isNumeric($('#quote_shipping_cost').val())) {
		total += parseFloat($('#quote_shipping_cost').val());
	};
	if ($.isNumeric($('#quote_tax').val())) {
		total += parseFloat($('#quote_tax').val());
	};
	if ($.isNumeric($('#quote_profit').val())) {
		total += parseFloat($('#quote_profit').val());
	};
	if ($.isNumeric($('#quote_misc_cost').val())) {
		total += parseFloat($('#quote_misc_cost').val());
	};
	if ($.isNumeric(total)) {
		return total.toFixed(2);
	};
	return; 
};
