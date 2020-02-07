window.addEventListener("load", function() {

//ranks#showでコンテンツボックスにマウスを乗せた時、
//順位ボックスの色が変わる
  $(function(){
    $('.flex__right__content__wrapper').hover( function(){
      var rank = $(this).data('rank');
      $('.flex__right__rank__list--' + rank ).css({
        borderLeft: 'solid 5px #FF5192'
      });
      return false ;
    });
    $('.flex__right__content__wrapper').mouseleave( function(){
      var rank = $(this).data('rank');
      $('.flex__right__rank__list--' + rank ).css({
        borderLeft: ''
      });
      return false ;
    });
  });

//ranks#showでコンテンツボックスの矢印をクリックした時、
//アコーディオンによって、ランク詳細を表示する
  $(function(){
    $('.content').click( function(){
      var target = $(this).data('target');
      $('#' + target).slideToggle();
      return false ;
    });
  });

//ranks#showでコンテンツボックスの矢印をクリックした時、
//アニメーションによって、段落を合わせる
  $(function(){
    $('.content').click( function(){
      var target = $(this).data('target');
      var rank = $('.flex__right__rank__list--' + target );
      var img = $('.flex__right__img__list--' + target );
      if ($(rank).css('margin-bottom') == '180px'){
        $(rank).animate({marginBottom: 5});
      }
      else if ($(rank).css('margin-bottom') == '5px'){
        $(rank).animate({marginBottom: 180});
      }
      if ($(img).css('margin-bottom') == '180px'){
        $(img).animate({marginBottom: 5});
      }
      else if ($(img).css('margin-bottom') == '5px'){
        $(img).animate({marginBottom: 180});
      }
      return false ;
    });
  });

});
