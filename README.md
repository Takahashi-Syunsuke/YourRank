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
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- has_many :likes
- has_many :ranks_tags

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
|content|string||
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
- has_many :ranks_tags

## rank_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|rank_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :rank
- belongs_to :tag