$(function(){

  var slideImage =  $('.contents__top__image__box');

  $('#arrow-left').click(function(){
    slideImage.animate({left: 0}, 800)
    setTimeout(function(){
      slideImage.css('overflow', 'hidden');
    },1000);
  })
  $('#arrow-right').click(function(){
    screenWidth = $(window).width();
    slideImage.animate({left: -screenWidth}, 800).css('overflow', 'visible');
  })

  $('#dot-first').hover(
    function() {
      $(this).css('color', '#757575');
      slideImage.animate({left: 0}, 800);
      setTimeout(function(){
        slideImage.css('overflow', 'hidden');
      },1000);
    },
    function() {
      $(this).css('color', 'white');
    }
  );
  $('#dot-second').hover(
    function() {
      $(this).css('color', '#757575');
      screenWidth = $(window).width();
      slideImage.animate({left: -screenWidth}, 800).css('overflow', 'visible');
    },
    function() {
      $(this).css('color', 'white');
    }
  );

});
