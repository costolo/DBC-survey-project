$(document).ready(function() {

  $('#show').on('click', function(event) {
    event.preventDefault;
    // $('#instructions').toggle();
    $('#questions').toggle();
    var buttonLabel = $(this).text();
    console.log(buttonLabel);
    $(this).text(buttonLabel === "Show Survey" ? "Hide Survey" : "Show Survey");
  });
});
