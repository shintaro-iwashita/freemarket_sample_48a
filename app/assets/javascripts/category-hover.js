$(function(){
  $(".header__row2__left__category__wrap").css("display","none");
  $(".header__row2__left__category li").hover(
    function(){
      $("ul", this).show();
      $("ul li ul", this).css("display","none");
    },function(){
      $("ul", this).hide();
    }
  );

  $(".header__row2__left__category__wrap li").hover(
    function(){
      $(".procategory-font",this).css("background", "#ea352d");
      $(".procategory-font",this).css("color", "#fff");
    },function(){
      $(".procategory-font",this).css("background", "#fff");
      $(".procategory-font",this).css("color","black");
    }
  );

  $(".header__row2__left__category__wrap__stick__nav li").hover(
    function(){
      $(".childcategory-font", this).css("background", "#eee");
    },function(){
      $(".childcategory-font", this).css("background", "#fff");
    }
  );

  $(".header__row2__left__category__wrap__stick__nav__child__grand li").hover(
    function(){
      $(".grandchild-font", this).css("background", "#eee");
    },function(){
      $(".grandchild-font", this).css("background", "#fff");
    }
  )
});
