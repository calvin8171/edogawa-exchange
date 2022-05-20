# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| name_kana          | string              | null: false               |
| surname_kana       | string              | null: false               |
| name_english       | string              | null: false               |
| surname_english    | string              | null: false               |

### Association

* has_many :eng_items
* has_many :messages

## eng_items table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| item_name                           | string     | null: false                    |
| description                         | text       | null: false                    |
| category_id                         | integer    | null: false                    |
| condition_id                        | integer    | null: false                    |
| area_id                             | integer    | null: false                    |
| price                               | integer    | null: false                    |
| user                                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :messages

## comments table

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| content  | text       |                                |
| user     | references | null: false, foreign_key: true |
| eng_item | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :eng_item