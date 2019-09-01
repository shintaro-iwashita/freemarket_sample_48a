# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|avatar|text||
|nickname|string|null: false,length:{maximum:6}|
|email|text|null: false, unique: true|
|password|string|null: false|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|

### Association
- has_many :products, dependent: :destroy
- has_many :creditCards


## productsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, length: { maximum: 40 }|
|description|text|null: false, length: { maximum: 1000 }|
|size_id|integer|
|condition_id|integer|null:false|
|price|integer|null:false|
|product_category_id|references|
|delivery_responsibility|integer||null:false|
|delivery_method|integer||null:false|
|delivery_area|integer||null:false|
|delivery_day|integer||null:false|
|seller_id|references|
|buyer_id|references|

### Association
- belongs_to :user
- has_many_attached :images
- belongs_to :product_category


## product_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|ansestry|integer|

### Association
- has_many :products


## credit_cardsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false|
|token_id|integer|null:false|

### Association
- belongs_to :user


## active_storage_blobs テーブル

|Column|Type|Options|
|------|----|-------|
|key|string|null: false, index:true, unique:true|
|filename|string|null: false|
|content_type|string|null: false|
|metadata|text|
|byte_size|bigint|null:false|
|checksum|string|null: false|


## active_storage_attachments テーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index:true, unique:true|
|record_type|string|null: false, index:true, unique:true|
|record_id|references|null: false|
|blob_id|references|

