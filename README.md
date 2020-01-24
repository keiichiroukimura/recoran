# README

## アプリ名: recoran(レコラン)
## アプリについて
#### 目的
spotifyの情報を元にお気に入りの１曲にコメントを付けて投稿するアプリです。
<br>知人、友人が最近どんな音楽を「良い！」と思ったのか、自分と同じような曲を投稿した人が<br>
他にどんな音楽を聞いているのかのか知ることができます。投稿し合い新しい音楽と出会いましょう！
#### 概要
・投稿作成画面の検索から SpotifyAPI を使用し投稿する楽曲素材を取得しています。<br>
・投稿一覧画面のアーティスト名検索で投稿一覧から該当ミュージシャンの投稿を検索ができます。<br>
・投稿の名前をクリックするとその人の投稿一覧を確認することができます。<br> 
・track 名,albaum 名は Spotify へのリンクが貼ってあります。 <br>
・投稿詳細画面から投稿に対してコメントができます。 <br>
・マイページから投稿の削除ができます。
## 開発環境
Ruby 2.5.5<br> Rails 2.5.3<br> Bundler 2.0.1
## インフラ
デプロイ：AWS EC2<br>
画像アップロード先：S3<br>

## 機能一覧
### ユーザー管理機能
・ログイン機能<br>
・ユーザー登録機能<br>
&nbsp;名前、メールアドレス、パスワード登録、退会 <br>
### 投稿機能
・曲検索<br>
・コメント登録<br>
・お気に入りの曲を投稿
### コメント機能(Ajax)
・投稿に対してのコメント
### Rspecの実装(テスト)
  ・system spec
### 拡張予定機能
・投稿に対してのお気に入り機能<br>
・友達フォロー機能<br>
・投稿集計機能<br>

## カタログ設計
https://docs.google.com/spreadsheets/d/1ezz_SYUrMdNgmwXDs4ldJpQrXMWizkVzRUairD2LW10/edit#gid=0
## テーブル設計
https://docs.google.com/spreadsheets/d/1ezz_SYUrMdNgmwXDs4ldJpQrXMWizkVzRUairD2LW10/edit#gid=1476658426
## ER図
https://docs.google.com/spreadsheets/d/1ezz_SYUrMdNgmwXDs4ldJpQrXMWizkVzRUairD2LW10/edit#gid=1965066052
## 画面遷移図
https://docs.google.com/spreadsheets/d/1ezz_SYUrMdNgmwXDs4ldJpQrXMWizkVzRUairD2LW10/edit#gid=1729091132
## ワイヤーフレームワーク
https://docs.google.com/spreadsheets/d/1ezz_SYUrMdNgmwXDs4ldJpQrXMWizkVzRUairD2LW10/edit#gid=72580220
## 使用gem一部(予定含む)
・rspotify<br>
・devise<br>
・omniauth<br>
・ransack<br>
・unicorn<br>
・capistrano<br>
・aws-sdk-s3



　 

