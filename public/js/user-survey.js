$(document).ready(function() {
<<<<<<< HEAD
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
=======
	$('.stats-button').on('submit', function(event) {
		event.preventDefault();
		var $target = $(event.target);
		$('.survey-stats').toggle();
	})
>>>>>>> adds survey data to surveys users have made, need to fix bug that displays all instead of the one you clicked on
})