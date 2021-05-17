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

| Column                | Type   | Options     |
| ----------------------| ------ | ----------- |
| email                 | string | null: false |
| password              | string | null: false |
| name                  | string | null: false |
|gender(性別)            | string |null: false  |

### Association
- has_many :posts
- has_many :room_users
- has_many :comments
- has_many :rooms,through: :room_users

## posts テーブル

| Column                         | Type                    | Options     |
| ------------------------------ | ------------------------| ----------- |
| title                          | string                  | null: false |
| self introduction(自己紹介)      | text                    | null: false |
| user_id   　　　　　　　　　　　   |integer                  | null: false, foreign_key: true|
|musical_instrument_id （楽器）   |inter                     |null: false|
|department_id(学科)      　　　   |integer                   |null: fals |
|undergraduate_id(学部)           |integer                   |null: false|
|course_id(コース)                 |integer　                ｜null：false｜
|image                            |integer                  |null: false|
|recruitment_id(募集内容)           |

### Association

- belongs_to :user
- has_many :comment 

## comments テーブル

| Column                | Type       | Options                        |
| ----------------------| ---------- | ------------------------------ |
| comment_content       | text       | null: false                    |
| user_id               | integer    |  null: false, foreign_key: true|
| post_id               | integer    |null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :post

## chat_room_users
|chat_room_id |integer   |null: false, foreign_key: true|
|user_id      |integer   |null: false, foreign_key: true|

## chat_rooms
|             |           |                             |

### Association

- belongs_to :user
- belongs_to :room
