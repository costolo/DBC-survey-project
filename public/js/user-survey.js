$(document).ready(function() {
	$('.survey-div').each(function() {
		var stats = $(this).children('.survey-stats');

		$(this).click(function(event) {
			event.preventDefault();
			stats.toggle();
		});
	});
});


	// $('.stats-button').on('submit', function(event) {
	// 	event.preventDefault();
	// 	var $target = $(event.target);
	// 	$('.survey-stats').toggle();
	// })
