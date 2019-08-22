$(function(){

  $('#arrow-left').click(function(){
    $('.contents__top__image__box').animate({left: 0},"fast");
  })
  $('#arrow-right').click(function(){
    screenWidth = $(window).width();
    $('.contents__top__image__box').animate({left: -screenWidth},"fast").css('overflow', 'visible');
  })


  $('#dot-first').hover(
    function() {
      $(this).css('color', '#757575');
      $('.contents__top__image__box').animate({left: 0},"fast");
    },
    function() {
      $(this).css('color', 'white');
    }
  );
  $('#dot-second').hover(
    function() {
      $(this).css('color', '#757575');
      screenWidth = $(window).width();
      $('.contents__top__image__box').animate({left: -screenWidth},"fast").css('overflow', 'visible');
    },
    function() {
      $(this).css('color', 'white');
    }
  );

});
