$(function(){
  $(".category-search").hover(
    function(){
      $(".header__row2__left__category__wrap__stick").css("display","block");
      console.log("ヤマ");
    },
    function(){
      $(".header__row2__left__category__wrap__stick").css("display","none");
      console.log('かわ');
    }
  );

  $('.header__row2__left__category__wrap__stick').hover(function(){
    $(this).css("background","red");
  },function(){
    $(this).css("background","white");
  }
  )

});