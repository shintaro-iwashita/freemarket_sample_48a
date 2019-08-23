$(function(){
  $(document).on('click','#add__credit__card', function(e) {
    e.preventDefault();
    Payjp.setPublicKey('pk_test_60a58b48a454416110aeec4d');
    var card = {
      number: parseInt($(".number").val()),
      cvc: parseInt($(".cvc").val()),
      exp_month: parseInt($(".credit__content__form__group__select__month").val()),
      exp_year: parseInt($(".credit__content__form__group__select__year").val())
    };
    Payjp.createToken(card, function(status, response) {
        var token = response.id;
        $.ajax({
          url: '/cards',
          type: "POST",
          data: { token: token },
          dataType: 'json',
        })
        .done(function(){
          alert("登録が完了しました"); //確認用
          $('.credit__content__form')[0].reset();
          
        })
        .fail(function(){
          alert("カード情報が正しくありません。"); //確認用
        })
    });
  });
});

