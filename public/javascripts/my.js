
function derefer (v) {
		window.location = v;
		return false;
}

function toggleInputAttribute() {
	var button = $('firma_submit');
	if (button.getStyle('visibility') == 'hidden') {
				button.setStyle({
				visibility: 'visible'
				});
	} else {
			button.setStyle({
				visibility: 'hidden'
				});
	}
	
	var fields = $$('.firma_input_field');
	fields.each(function(name) {
		if (name.readAttribute('disabled') == 'disabled') {
			name.enable();
		} else {
			name.disable();
			name.writeAttribute('disabled') == 'disabled';
		}
	});
}

/*
document.observe('dom:loaded', function () {
	var fields = $$('.'); 
	var i = 0;
	$('edit_firma').observe('click', function () {
		fields.each(function() {
			fields[i++].enable();
			});
	});
});
*/  