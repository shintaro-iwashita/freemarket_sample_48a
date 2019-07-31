$(function(){
  $('a[href^="#root category"]').click(function(){
    var speed = 500;
    var href = $(this).attr("href");
    var postion = $("#root_category-1").offset().top;
    $("html,body").animate({scrollTop: 400});
    return false;
  });
});