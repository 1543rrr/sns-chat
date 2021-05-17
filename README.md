# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# テーブル設計

## users テーブル

| Column                         | Type   | Options     |
| -------------------------------| ------ | ----------- |
| email                          | string | null: false |
| password                       | string | null: false |
| name                           | string | null: false |
|gender_id(性別)                  | string |null: false  |
|recruitment_id(募集内容)          |string   null: false  |
|musical_instrument_id （楽器）    |inter    |null: false|
|department_id(学科)      　　　   |integer  |null: fals |
|undergraduate_id(学部)           |integer  |null: false|
|course_id(コース)                 |integer ｜null：false｜
| self_introduction(自己紹介)      | text    | null: false |

### Association
- has_many :posts
- has_many :chat_users
- has_many :comments
- has_many :chats,through: :chat_users

## posts テーブル

| Column                         | Type                    | Options     |
| ------------------------------ | ------------------------| ----------- |
| title                          | string                  | null: false |
| user   　　　　　　　　　　　      |references               | null: false, foreign_key: true|


### Association

- belongs_to :user
- has_many :comment

## comments テーブル

| Column                | Type       | Options                        |
| ----------------------| ---------- | ------------------------------ |
| text                  | text       |null: false, foreign_key: true  |
| user                  | references |null: false, foreign_key: true  |
| post                  | references |null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :post

## chat_room_users
|chat_room    |references|null: false, foreign_key: true|
|user         |references|null: false, foreign_key: true|

### Association
- belongs_to :room
- belongs_to :user

## chat_rooms
|user          |references|null: false, foreign                           |

### Association
has_many :chat_room_users
has_many :chats, through: :chat-users

