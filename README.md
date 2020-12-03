# GosyuinBook

## usersテーブル
| Column 　　   　| Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| email          | string     | null: false                    |
| password       | string     | null: false                    |
| name           | string     | null: false                    |
| profile        | text       | null: false                    |
| prefecture_id  | integer    | null: false                    |

### Association
- has_many gosyuins
- has_many comments

## gosyuinsテーブル
| Column 　　   　| Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| title          | string     | null: false                    |
| prefecture_id  | integer    | null: false                    |
| stamp_id       | integer    | null: false                    |
| limited_id     | integer    | null: false                    |
| caption        | text       | null: false                    |
| image          | ActiveStorage                               |
| user           | references |foreign_key:true                |

### Association
- belongs_to user
- belongs_to_active_hash prefecture_id
- belongs_to_active_hash stamp_id
- belongs_to_active_hash limited_id


## commentsテーブル
| Column 　　   　| Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| text           | text       | null: false                    |
| user           | references | foreign_key: true              |
| gosyuin        | references | foreign_key: true              |

### Association
- belongs_to gosyuin
- belongs_to user
