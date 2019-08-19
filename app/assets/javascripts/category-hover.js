$(function(){
  $(".header__row2__left__category li").hover(
    function(){
      $("ul", this).show();
      console.log(this);
      $("ul li ul", this).css("display","none");
      console.log(this);
    },function(){
      $("ul", this).hide();
    }
  );
  
  $('.procategory-font').hover(function(){
    $(this).css({
      background: "#ea352d",
      color: "#fff"
    });
  },function(){
    $(this).css({
      background: "",
      color: ""
    });
  }
  );

  // $('.procategory-font').hover(function(){
  //   $(".header__row2__left__category__wrap__stick__child__nav").css("display", "block");
  //     console.log("たき");
  // },function(){
  //   $(".header__row2__left__category__wrap__stick__child__nav").css("display", "none");
  //     console.log("たに");
  //   }
  // );
});