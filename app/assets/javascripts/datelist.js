$(function() {
  function appendDays(){
  // その月の日数を決める
    year = $("#yearlist").val();
    month = $("#monthlist").val();
    if (month == 2) { // うるう年を計算する。
      if(year == "--"){
        days = 0;
      } else if(year % 4 == 0){
        if (year % 100 == 0 && year % 400 != 0){
            days = 28;
          } else {
            days = 29;
          }
      } else {
        days = 28;
      }
    } else if (month == 1 || month == 3 || month == 5|| month == 7|| month == 8|| month == 10|| month== 12) {
      days = 31;
    } else if (month == "--"){
      days = 0;
    } else {
      days = 30;
    }
  // 一旦、リストをリセットする(全削除)
  $('#datelist option').remove();
  // 上記で決めた日数を、リストに追加する。
    insert="";
    for (var i=0; i<=days; i++) {
      if (i==0){
        j="--"
      } else {
        j=i
      }
      insert = insert + "<option>" + j + "</option>";
    }
  $("#datelist").append(insert);
  }


  $("#monthlist").change(function() {
    appendDays();
  })
  $("#yearlist").change(function() {
    appendDays();
  })
 });
