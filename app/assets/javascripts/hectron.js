$(document).ready(function(){
  $('#someTab').tab('show');

  // fix tabs
  $('.logo').click(function() {
    $('.nav-tabs li').each(function(index, element) {
      if (element.className == 'active' && $(element).find('a').text().toLowerCase() !== 'home')
        element.className = '';

      if ($(element).find('a').text().toLowerCase() === 'home')
        element.className = 'active';
    });
  });

  $(".buddy").on("swiperight",function(){
    $(this).addClass('rotate-left').delay(700).fadeOut(1);
    $('.buddy').find('.status').remove();

    $(this).append('<div class="status like">Like!</div>');
    if ( $(this).is(':last-child') ) {
      $('.buddy:nth-child(1)').removeClass ('rotate-left rotate-right').fadeIn(300);
    } else {
      $(this).next().removeClass('rotate-left rotate-right').fadeIn(400);
    }
  });

  $(".buddy").on("swipeleft",function(){
    $(this).addClass('rotate-right').delay(700).fadeOut(1);
    $('.buddy').find('.status').remove();
    $(this).append('<div class="status dislike">Dislike!</div>');

    if ( $(this).is(':last-child') ) {
      $('.buddy:nth-child(1)').removeClass ('rotate-left rotate-right').fadeIn(300);
    } else {
      $(this).next().removeClass('rotate-left rotate-right').fadeIn(400);
    }
  });

});

