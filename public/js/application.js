$(document).ready(function() {
  $('#take-survey').on('click', function(event) {
    event.preventDefault;
    $('#instructions').toggle();
    $('#questions').toggle();
  });
});
