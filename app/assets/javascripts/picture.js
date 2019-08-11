$(document).on('turbolinks:load', function() { 

  $(function(){

    function buildImgHtml(blobUrl){
      var image = `<img src="${blobUrl}" id="preview-image">`;
      return image;
    }

    function appendImgBox(insertImg){
      var imagePreviewHtlm = '';
      imagePreviewHtlm = `<div class="upload__image">
                            ${insertImg}
                            <div class="upload__image__btn">
                              <a class="remove-btn">削除</a>
                          </div>`
      $(imagePreviewHtlm).insertAfter('.upload__images');
    }


    $('#pic_upload').change(function(e){
      var files = e.target.files[0];
      var blobUrl = window.URL.createObjectURL(files);

      insertImg = buildImgHtml(blobUrl);
      appendImgBox(insertImg);
    });
    
  
  });
});
