$(document).ready(function() {

  $('#show').on('click', function(event) {
    $('#questions').toggle();
    var buttonLabel = $(this).text();
    console.log(buttonLabel);
    $(this).text(buttonLabel === "Show Survey" ? "Hide Survey" : "Show Survey");
  });

  $('#take').on('click', function(event) {
    event.preventDefault;
    $('#instructions').toggle();
    $(this).prop('disabled', true);
    $('#show').prop('disabled', true);
    $('#questions').toggle(false);
    var firstQuestionId = $('[name="question_id"]').val();

    $.ajax({
      url: '/questions/' + firstQuestionId,
      type: 'GET',
      dataType: 'html'
    }).done(function(response) {
      $('#question-display').html(response);
    });
  });

  
});
