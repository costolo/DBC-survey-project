$(document).ready(function () {
  $('#survey-form').on('submit', function (event) {
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      url: $target.attr('action'),
      type: 'post',
      data: $target.serialize()
    }).done(function (response) {
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
});