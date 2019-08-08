$(document).on('turbolinks:load',function() {
  $('.input-price').on('input',function(){
    var price = $(this).val();
    var fee = Math.floor(price * 0.1);
    var profit = Math.ceil(price * 0.9);
    $('#fee').text('¥' + fee);
    $('#profit').text('¥' + profit);
  })
});
