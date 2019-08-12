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
      if (itemNum <= 4) {
        imagePreviewHtlm = `<div class="upload__image">
                              ${insertImg}
                              <div class="upload__image__btn">
                                <a class="remove-btn">削除</a></div></div>
                            <input multiple= "multiple" name="product[images][]" class="upload-image" data-image= "${itemNum}" type="file" id="pic_upload" style= "display: none;">
                            <div class="sell-upload-drop-box" onclick= "$('[data-image= ${itemNum}]').click()"></div>`
        $(imagePreviewHtlm).appendTo('#firstbox');
      } else if (itemNum == 5) {
        imagePreviewHtlm = `<div class="upload__image">
                              ${insertImg}
                              <div class="upload__image__btn">
                                <a class="remove-btn">削除</a></div>
                            </div>`
        newDropBox = `<input multiple= "multiple" name="product[images][]" class="upload-image" 
        data-image="${itemNum}" type="file" id="pic_upload" style= "display: none">
                      <div class="sell-upload-drop-box" onclick= "$('[data-image= ${itemNum}]').click()"></div>`
        $(imagePreviewHtlm).appendTo('#firstbox');
        $(newDropBox).appendTo('#secondbox');
      } else if (itemNum < 10) {
        imagePreviewHtlm = `<div class="upload__image">
                              ${insertImg}
                              <div class="upload__image__btn">
                                <a class="remove-btn">削除</a></div></div>
                            <input multiple= "multiple" name="product[images][]" class="upload-image" data-image="${itemNum}" type="file" id="pic_upload" style= "display: none;">
                            <div class="sell-upload-drop-box" onclick= "$('[data-image= ${itemNum}]').click()"></div>`
      $(imagePreviewHtlm).appendTo('#secondbox');
      } else {
        imagePreviewHtlm = `<div class="upload__image">
                              ${insertImg}
                              <div class="upload__image__btn">
                                <a class="remove-btn">削除</a></div></div>`
      $(imagePreviewHtlm).appendTo('#secondbox');
      }
      itemNum += 1;
    }

    $(document).on("change", "#pic_upload",function(e){
      var files = e.target.files[0];
      var blobUrl = window.URL.createObjectURL(files);

      insertImg = buildImgHtml(blobUrl);
      $('.sell-upload-drop-box').css('display', 'none');
      appendImgBox(insertImg);

    });


  });
});
