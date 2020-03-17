$(document).ready(function(){
  // ボックスにマウスを乗せた時、順位ボックスの色が変わる
  var selector = $('.flex__right__content__wrapper')
  $(selector).hover( function(){
    var rank = $(this).data('rank');
    $('.flex__right__rank__list--' + rank ).css( 'borderLeft', 'solid 5px #FF5192' );
  });
  $(selector).mouseleave( function(){
    var rank = $(this).data('rank');
    $('.flex__right__rank__list--' + rank ).css( 'borderLeft', '' );
  });

  // ボックス内矢印をクリックした時、アコーディオンによって詳細を表示する
  $('.content').click( function(){
    var target = $(this).data('target');
    $('#' + target).slideToggle();
  });

  // 矢印をクリックした時、アニメーションによって、段落を合わせる
  $('.content').click( function(){
    var target = $(this).data('target');
    var rank = $('#rank-' + target );
    var img = $('#img-' + target );

    if ($(rank).css('margin-bottom') == '180px'){ $(rank).animate({marginBottom: 5}); }
    else if ($(rank).css('margin-bottom') == '5px'){ $(rank).animate({marginBottom: 180}); }

    if ($(img).css('margin-bottom') == '180px'){ $(img).animate({marginBottom: 5}); }
    else if ($(img).css('margin-bottom') == '5px'){ $(img).animate({marginBottom: 180}); }
  });
});
