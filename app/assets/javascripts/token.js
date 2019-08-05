$(function(){
  $(document).on('click','(登録ボタンのIDやクラス名)', function(e) {
    e.preventDefault();
    Payjp.setPublicKey('（Pay.jpを登録した時に取得できる公開鍵）');
    var card = {
      number: parseInt($("（カード番号入力欄のIDやクラス名）").val()),
      cvc: parseInt($("（セキュリティーコード入力欄のIDやクラス名）").val()),
      exp_month: parseInt($("（有効月入力欄のIDやクラス名）").val()),
      exp_year: parseInt($("（有効年入力欄のIDやクラス名）").val())
    };
    Payjp.createToken(card, function(status, response) {
      if (status == 200) {
        //トークン作成成功時の処理
      }
      else {
        //トークン作成失敗時の処理
      }
    });
  })
})