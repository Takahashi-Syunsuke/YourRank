## ranksテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|rank_1|string|null: false|
|rank_2|string|null: false|
|rank_3|string|null: false|
|image_1|text||
|image_2|text||
|image_3|text||
|content_1|string|
|content_2|string|
|content_3|string|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- has_many :likes
- has_many :ranks_tags
- has_many  :tags, through: :rank_tags

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|integer|null: false|
|nickname|string|null: false|
### Association
- has_many :ranks
- has_many :comments
- has_many :likes

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|content|string|null: false|
|rank_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :rank
- belongs_to :user

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|rank_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :rank
- belongs_to :user

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :rank_tags
- has_many :ranks, through: :rank_tags

## rank_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|rank_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :rank
- belongs_to :tag


# README
 商品やサービス、価格にフォーカスするのではなく、<br>
 多様化する個人の価値観にフォーカスすることに着想を得たランキングサイトです。<br>
 商品やサービスが高品質かつコモでティ化した現代では、「誰から買うか」「付加価値は何か」といった<br>
 プラスアルファのブランディングが必要です。<br>
 その可視化しにくい価値を定数化し、共有することで、新しい消費行動を促すことがこのサイトの目的です。
 
 開発期間： 2週間（但し、都度の修正を加えております。）<br>
 開発人数： 1名

# DEMO
 サイト使用時のデモ画像<br>

 
# Features
 初めて作成したオリジナルサイトです。<br>
 ユーザーが持つ情報こそが、このサイトの価値を高めると確信し、<br>
 ユーザーの使いやすさ（配色や直感的に操作ができるUIなど）を第一に考え、作成いたしました。<br>
 
 主な機能
 ランキングの投稿、編集、閲覧、削除
 ユーザーの登録、編集、削除
 コメントの投稿
 タグの作成
 いいね機能
 ランキングのインクリメンタルサーチ機能
 
# Requirement
 開発環境<br>
 ruby 2.5.1<br>
 rails 5.2.3
 
 デプロイ環境<br>
 AWS（EC2）
 
# Note
当サイトは随時ブラッシュアップを行っております。<br>
タイミングによっては、正常に表示されない場合がございます。その際は、少し時間をおいてアクセスして下さい。<br>
また、当サイトにはベーシック認証や各種アカウント設定が行われています。

「Yourank」<br>
URL： http://18.176.247.199/

ベーシック認証<br>
ユーザー名： test-user<br>
パスワード： aaaa

テスト用アカウント<br>
メール： <br>
パスワード： 

# Usage
サイトトップ画面から右上ヘッダー部にある「投稿」からランキングを投稿することができます。<br>
「投稿画面」<br>
URL： http://18.176.247.199/ranks/new

投稿後、トップ画面に作成された、ランキングのウィンドウからタイトルをクリックしていただくことで、<br>
ランキングの詳細画面に移動することができます。<br>
ここでは、ランキングの編集、削除に加え、ユーザーの編集、削除、コメントの投稿、いいね機能などをお試し頂けます。

# Future
このサイトは、更なるユーザビリティの向上を目指し、追加実装をしていく予定です。
フォロー機能
コメント、タグの編集、削除機能
タグ選択時の個数制
画像の複数投稿、動画投稿
パンくずリストの導入など

また、実際に消費行動につながっているのか、どのランキングが支持されているのかなどを
検証する方法として、カウンターや広告機能を導入出来ればと考えています。

# Author
高橋駿介<br>
2020年３月、10週間に及ぶプログラミングスクールでの学習を終了し、転職活動中

email： t68.takahashi.shunsuke@gmail.com
