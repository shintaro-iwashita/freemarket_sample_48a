$(document).on('turbolinks:load', function() { 

  $(function(){
    $('#pic_upload').change(function(e){
      var files = e.target.files[0];
      var blobUrl = window.URL.createObjectURL(files);

      var img = $(`<li class="upload__image">
                  <img id="preview-image">
                  <div class="upload__image__btn">
                    <a class="remove-btn" data-id="">削除</a>
                  </div> 
                </li>`);
      
      $('#preview-image').attr('src', blobUrl);
    })


  });

});
