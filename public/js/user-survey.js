$(document).ready(function() {
	$('.stats-button').on('submit', function(event) {
		event.preventDefault();
		var $target = $(event.target);
		$target.hide();
		$.ajax({
					 url: $target.attr('action'),
					 type: "GET",
		}).done(function(response) {
			console.log(response)
			$('.survey-stats').append(response + "<br>")
		})
	})
})