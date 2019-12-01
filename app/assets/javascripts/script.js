$(function() {
  //クリックしたときのファンクションをまとめて指定
  $('.tab li').click(function(){
    //.index()を使いクリックされたタブが何番目かを調べ、
    //indexという変数に代入します。
    var index = $('.tab li').index(this);
    //コンテンツを一度消して、すべて非表示にし、
    $('.content li').removeClass('hide');
    $('.content li').css('display','none');
    //クリックされたタブと同じ順番のコンテンツを表示します。
    $('.content li').eq(index).css('display','block');
    //一度タブについているクラスselectを消し、
    $('.tab li').removeClass('select');
    //クリックされたタブのみにクラスselectをつけます。
    $(this).addClass('select')
  });
});

$(function(){
  $('.album_edit').click(function(){
    $('.album_updatebtn').removeClass('hide')
  });
});
