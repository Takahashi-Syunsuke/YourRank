$(function() {
  var buildHTML = function(rank) {
    var html =
    `<div class="search__box">
      <a href="/ranks/${rank.id}">${rank.title}</a>
    </div>`
    return html;
  };

  function addNoUser() {
    var html = 
    `<div class="search__box">
      <p.search__box__message>ランキングが見つかりません</p>
    </div>`;
    $(".user-search-result").append(html);
  };

  $("#user-search-field").on("keyup", function() {
    let input = $("#user-search-field").val();
    $.ajax({
      type: 'GET',
      url: '/ranks/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(ranks) {
      $(".user-search-result").empty();
      if (ranks.length !== 0) {
        var insertHTML = '';
        $.each(ranks, function(i, rank) {
          insertHTML += buildHTML(rank)
        });
        $('.user-search-result').append(insertHTML);
      } else if (input.length == 0) {
        return false;
      } else {
        addNoUser();
      }
    })
    .fail(function() {
      alert("通信エラーです。ランキングが表示できません。");
    });
  });

});