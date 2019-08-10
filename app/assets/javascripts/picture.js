$(document).on('turbolinks:load', function() { 

  $(function(){
    $('#pic_upload').change(function(e){
      var files = e.target.files;
      console.log(files)
    })

  })








})
