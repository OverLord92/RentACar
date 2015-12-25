$(document).ready(function(){
	
	$('body').css('background-color', ' #64C0E8');
	
	$('input').blur(function(event){
		var ID = event.target.id;
		
		var manufacturer = $('#manufacturer').val();
		var fromPricePerDay = $('#fromPricePerDay').val();
		var toPricePerDay = $('#toPricePerDay').val();
		
		$.ajax({
			url: 'search',
			method: 'POST',
			mimeType: 'text/html',
			data: {
				ID: ID,
				manufacturer: manufacturer,
				fromPricePerDay: fromPricePerDay,
				toPricePerDay: toPricePerDay
				}
		}).done(function(odgovor){
			$('body').css('background-color', '#E32242');
		});
	});
	
});