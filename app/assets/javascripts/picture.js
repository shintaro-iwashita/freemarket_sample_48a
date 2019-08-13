$(document).on('turbolinks:load', function() { 

  $(function(){
    var itemNum = 1;
    // 画像URLをセッティング
    function buildImgHtml(blobUrl){
      var image = `<img src="${blobUrl}" id="preview-image">`;
      return image;
    }

    // 画像+ボタンのひとかたまりを作る
    function appendImgBox(insertImg){
      var imagePreviewHtlm = '';
      imagePreviewHtlm = `<div class="upload__image">
                            ${insertImg}
                            <div class="upload__image__btn">
                              <a class="remove-btn">削除</a></div></div>
                          <input multiple= "multiple" name="product[images][]" class="upload-image" data-image= "${itemNum}" type="file" id="pic_upload${itemNum}" style= "display: none;">
                          <div class="sell-upload-drop-box" onclick= "$('#pic_upload${itemNum}').click()"></div>`
      $(imagePreviewHtlm).appendTo('.select-large-box');
    }


    $('#pic_upload').change(function(e){
      var files = e.target.files[0];
      var blobUrl = window.URL.createObjectURL(files);


      insertImg = buildImgHtml(blobUrl);
      appendImgBox(insertImg);
      $('.sell-upload-drop-box.have-item-0').css('display', 'none');
 
    });

  
  });
});
