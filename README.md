# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :comments
- has_many :prototypes

## prototypes テーブル

| Column       | Type         | Options                       |
| -------------| ------------ | ----------------------------- |
| title        | string       | null: false                   |
| catch_copy   | text         | null: false                   |
| concept      | text         | null: false                   |
| user         | references   | null: false, foreign_key: true|


### Association

- has_many :comments
- belongs_to :user


## comments テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | text       | null: false                    |
| text        | references | null: false, foreign_key: true |
| prototype   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :prototype

