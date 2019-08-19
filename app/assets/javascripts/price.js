$(function(){
  $('.input-price').on('input',function(){
    var price = $(this).val();
    if (price < 300 || price > 10000000){
      $('#fee').text('-');
      $('#profit').text('-');
    }else{
      var fee = Math.floor(price * 0.1);
      var profit = Math.ceil(price * 0.9);
      $('#fee').text('¥' + fee);
      $('#profit').text('¥' + profit);
    }
  })
});
