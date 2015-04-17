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
    console.log($target)
    console.log($target.attr('action'));
    // $.ajax({
    //   url: $target.attr('action'),
    //   type: 'post',
    //   data: $target.serialize()
    // }).done(function (response) {
    //   $('.new-answer').html(response);
    // });
  });
});