$(function(){
  $('.contener__content__mypage-tab__notice li').click(function(e){
    e.preventDefault();
    var index = $('.contener__content__mypage-tab__notice li').index(this);
    $('.contener__content__mypage-tab__notice li').removeClass('active');
    $(this).addClass('active');
    $('.mypage-item-list.tab-pane').hide();
    $('.mypage-item-list.tab-pane').eq(index).show();
  });
});

$(function(){
  $('.mypage-tab-container__transaction li').click(function(e){
    e.preventDefault();
    var index = $('.mypage-tab-container__transaction li').index(this)
    $('.mypage-tab-container__transaction li').removeClass('active');
    $(this).addClass('active');
    $('.mypage-item-belong.tab-pane').hide();
    $('.mypage-item-belong.tab-pane').eq(index).show();
  })
})