$(document).ready(function(){
  // プレビューのhtmlを生成
  const buildImg = (index,url)=> {
    const html = `<img class="preview-${index}" src="${url}">`;
    return html;
  }
  // 選択されたファイルのプレビューを表示させる記述
  $('.form__image__wrapper').click(function() {
  var targetIndex = $(this).data('index');
    $('.form__image__wrapper__zone-' + targetIndex).change( function(e) {
      const file = e.target.files[0];
      const blobUrl = window.URL.createObjectURL(file);
      $('.preview-' + targetIndex).remove();
      $('.hidden-' + targetIndex).css('display', 'none');
      $(this).append(buildImg(targetIndex, blobUrl));
    });
  });
  // 削除ボタンの記述
  $('.form__image__wrapper').mouseenter(function() {
  var targetIndex = $(this).data('index');
    $('#delete-' + targetIndex).click( function() {
      $('.preview-' +  targetIndex).remove();
      $('#rank-image-' + targetIndex).val('');
      $('.hidden-' + targetIndex).css('display', 'block');
    });
  });
  // 空にするボタンの記述
  $('a#delete-btn').click(function(){
    if (!confirm('再読込みが発生し、編集中の内容は全て失われます。\n編集内容は『ランキングを編集』ボタンを押すことで保存されます。\n本当に削除しますか？')){
      return false;
    }
  });
  // 画像選択のインデックスに詳細を含める
  $('.form__rank').change(function(){
    var targetRank = $(this).data('rank')
    var txt = $(this).val()
    // インデックス名を初期化
    var now = $('#index-image-' + targetRank).text();
    var refresh = $('#index-image-' + targetRank).text().replace(now, '画像');
    $('#index-image-' + targetRank).text(refresh);
    // 初期値から置換
    var result = $('#index-image-' + targetRank).text().replace('画像', '画像（' + txt + ')')
    $('#index-image-' + targetRank).text(result);
  });

  // タグを選択後、チェックボックスの無効化とhtmlの追加
  var checkbox = $("input:checkbox[name='rank[tag_ids][]']")
  $(checkbox).click(function(){
    if ($("[name='rank[tag_ids][]']:checked").length == 3){
      $(checkbox).prop({'disabled':true});
      const html = `<div class="reset-tag">タグを選び直す</div>`
      $('.form__tag').append(html);
    }
  });
  // タグを選び直すボタンの記述
  $(document).on('click', '.reset-tag', function(){
    checkArray = $("[name='rank[tag_ids][]']:checked")
    cA_0 = checkArray[0].value
    cA_1 = checkArray[1].value
    cA_2 = checkArray[2].value
    deleteNum = Math.max(cA_0,cA_1,cA_2);
    $('#rank_tag_ids_' + deleteNum).prop('checked', false);
    $(checkbox).prop({'disabled':false});
    $(this).remove();
  });                                                                                                     
  // 投稿時にチェックボックスを有効化する
  $('.create__btn').click(function(){
    $(checkbox).prop({'disabled':false});
  });
  // 選び直すボタンの有無で分岐 
  $('.form__tag').mouseenter(function(){
    if ($('.reset-tag').length){
      $(checkbox).prop({'disabled':true});
    }
  })

  // エラ-メッセージの記述ここから
  var array = [0,1,2,3];
  $.each(array, function(index, value){
    var targetError = $('.form__error-' + value).data('error');
    if ($('.error-message-' + value).length){
      $(targetError).css(
        {'border': '1px solid red','boxShadow': '0 0 4px red'} 
      );
    }
  });
  // 入力後、エラ〜メッセージを削除
  $.each(array, function(index, value){
    var targetError = $('.form__error-' + value).data('error');
    $(targetError).keyup(function(){
      $(targetError).css({'border': '', 'boxShadow': ''});
      $('.error-message-' + value).remove();
    });
  });
});