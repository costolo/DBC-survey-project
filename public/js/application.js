$(document).ready(function() {

  $('#show').on('click', function(event) {
    $('#questions').toggle();
    $('.response').prop('disabled', true);
    $('[type="radio"]').prop('disabled', true);
    var buttonLabel = $(this).text();
    $(this).text(buttonLabel === "Show Survey" ? "Hide Survey" : "Show Survey");
  });

  $('#take').on('click', function(event) {
    $('#instructions').toggle();
    $(this).prop('disabled', true);
    $('#show').prop('disabled', true);
    $('#questions').toggle(false);

    $.ajax({
      url: '/question',
      type: 'GET',
      dataType: 'html'
    }).done(function(response) {
      $('#question-display').html(response);
    });
  });

  $('#show-survey').on('submit', '.question-response', function(event) {
    event.preventDefault();

    var data = $('.question-response').serialize();
    $.ajax({
      url: '/answer_users',
      type: 'POST',
      data: data,
      dataType: 'html'
    }).done(function(response) {
      console.log(response);
      $('#question-display').html(response);
    });
  })
});
