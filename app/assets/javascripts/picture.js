$(document).on('turbolinks:load', function() { 

  $(function(){
    $('#pic_upload').change(function(e){
      var files = e.target.files[0];
      var reader = new FileReader();
      $preview = $(".preview");
      t = this;
    })

    reader.onload = (function(files){
      return function(e){
      $preview.append($('img')).attr({
        src: e.target.result,
        width: "150px",
        class: "preview",
        title: file.name
        });
      };
    })(files);

    reader.readAsDataURL(files);
  });

});
