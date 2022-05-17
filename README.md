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

* has_many :items
* has_many :messages

## items table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| good_name                           | string     | null: false                    |
| good_description                    | text       | null: false                    |
| category_id                         | integer    | null: false                    |
| good_condition_id                   | integer    | null: false                    |
| price                               | integer    |                                |
| user                                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :messages

## messages table

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item