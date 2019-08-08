$(function(){
  $(document).on('click','.credit__content__card__link', function(e) {
    e.preventDefault();
    Payjp.setPublicKey('pk_test_6f8c0dbd80a304bd5dda8853');
    var card = {
      number: parseInt($(".number").val()),
      cvc: parseInt($(".cvc").val()),
      exp_month: parseInt($(".credit__content__form__group__select__month").val()),
      exp_year: parseInt($(".credit__content__form__group__select__year").val())
    };
    Payjp.createToken(card, function(status, response) {
      if (status == 200) {
        var token = response.id;
        $.ajax({
          url: cards_path,
          type: "POST",
          data: { token: token },
          dataType: 'json',
        })
        .done(function(){
          //非同期通信失敗時の処理
          console.log("asdfgh")
        })
        .fail(function(){
          //非同期通信失敗時の処理
          console.log("a345yjklh")

        })
      }
      else {
        //トークン作成失敗時の処理
        console.log("asdfghsdfghjkjhgfd")

      }
    });
  });
});

