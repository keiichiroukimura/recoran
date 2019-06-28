// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery/dist/jquery.js
//= require bootstrap/dist/js/bootstrap.min
//= require activestorage
//= require turbolinks
//= require_tree .
$(function(){
  $fileField = $('#file')
  選択された画像を取得し表示
  $($fileField).on('change', $fileField, function(e) {
    file = e.target.files[0]
    reader = new FileReader(),
    $preview = $("#img_field");

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
          src: e.target.result,
          width: "100%",
          id: "#edit__image",
          title: file.name
        }));
      };
    })(file);
    reader.readAsDataURL(file);
  });
});

// $(function(){
//   //画像ファイルプレビュー表示のイベント追加 fileを選択時に発火するイベントを登録
//   $('form').on('change', 'input[type="file"]', function(e) {
//     var file = e.target.files[0],
//         reader = new FileReader(),
//         $preview = $("#img_field");
//         t = this;
//     // 画像ファイル以外の場合は何もしない
//     if(file.type.indexOf("image") < 0){
//       return false;
//     }
//     // ファイル読み込みが完了した際のイベント登録
//     reader.onload = (function(file) {
//       return function(e) {
//         //既存のプレビューを削除
//         $preview.empty();
//         // .prevewの領域の中にロードした画像を表示するimageタグを追加
//         $preview.append($('<img>').attr({
//                   src: e.target.result,
//                   width: "100%",
//                   class: "#img_field",
//                   title: file.name
//               }));
//       };
//     })(file);
//     reader.readAsDataURL(file);
//   });
// });

