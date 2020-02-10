$(function(){
  $('#image-rank-1').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $(".form__first__image-check__background#rank-1");
        t = this;

    if(file.type.indexOf("image") < 0){
      return false;
    }

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  class: "preview-1",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
});

$(function(){
  $('#image-rank-2').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $(".form__second__image-check__background#rank-2");
        t = this;

    if(file.type.indexOf("image") < 0){
      return false;
    }

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  class: "preview-2",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
});

$(function(){
  $('#image-rank-3').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $(".form__third__image-check__background#rank-3");
        t = this;

    if(file.type.indexOf("image") < 0){
      return false;
    }

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  class: "preview-3",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
});

$(function(){
  $("#delete-rank-1").click( function() {
    $(".preview-1").remove();
    $('input#rank_image_1').val('')
    return false;
  });
});

$(function(){
  $("#delete-rank-2").click( function() {
    $(".preview-2").remove();
    $('input#rank_image_2').val('')
    return false;
  });
});

$(function(){
  $("#delete-rank-3").click( function() {
    $(".preview-3").remove();
    $('input#rank_image_3').val('')
    return false;
  });
});

$(function(){
  $('form').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $(".icon");
        t = this;

    if(file.type.indexOf("image") < 0){
      return false;
    }

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  class: "preview",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
});

$(function(){
  $('.field-icon-reset').click( function() {
    $(".preview").remove();
    $('input[type=file]').val('');
    return false;
  });
});
