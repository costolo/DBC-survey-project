$(document).ready(function () {
  var question_response;
  $('#survey-form').on('submit', function (event) {
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      url: $target.attr('action'),
      type: 'post',
      data: $target.serialize()
    }).done(function (response) {
      question_response = response;
      $('.new-question').html(response);
    });
  });

  $('.container').on('submit', '#question-form', function (event) {
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      url: $target.attr('action'),
      type: 'post',
      data: $target.serialize()
    }).done(function (response) {
      $('.new-answers').html(response);
    });
  });

  $('.container').on('submit', '#answer-form', function (event) {
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      url: $target.attr('action'),
      type: 'post',
      data: $target.serialize()
    });
    $('.new-question').html(question_response);
    $('.new-answers').html('');
  });
});