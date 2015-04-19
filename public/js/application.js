$(document).ready(function() {

  $('#show').on('click', function(event) {
    $('#questions').toggle();
    $('.response').prop('disabled', true);
    $('[type="radio"]').prop('disabled', true);
    var buttonLabel = $(this).text();
    $(this).text(buttonLabel === "Show Survey" ? "Hide Survey" : "Show Survey");
  });

  $('#take-survey').on('submit', function(event) {
    event.preventDefault();
    $('#instructions').toggle();
    $(this).prop('disabled', true);
    $('#show').prop('disabled', true);
    $('#questions').toggle(false);

    var data = $(this).serialize();
    $.ajax({
      url: '/survey_users',
      type: 'POST',
      data: data,
    });

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
        var data = $('.question-response')
        $.ajax({
          url: '/answer_users',
          type: 'POST',
          data: data.serialize(),
          dataType: 'html'
        }).done(function(response) {
          $('#question-display').html(response);
          if (response.indexOf("Thank you for your participation") > -1) {
            setTimeout(function() {
              var userId = $(data).find('[name="answer_user[user_id]"]').val();
              window.location.href = '/users/' + userId;
            }, 2000);
          };
        });
    });
});
