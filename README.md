# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|avatar|text||
|nickname|string|null: false,length:{maximu:20}|
|e-mail|text|null: false, unique: true|
|password|string|null: false|
|self_introduction|text||
|evaluation|integer|null: false|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|data_of_birth|date||
|how_to_pay|string|null: false|
|gender|string|null: false, foreign_key: true|

### Association
- has_many :products, dependent: :destroy
- has_many :comments  
- has_many :likes
- has_many :delivery_address, dependent: :destroy
- has_one :user_address, dependent: :destroy

## user_addressテーブル

|Column|Type|Options|
|------|----|-------|
|postal_number|string|false,length:{maximu:8}|
|prefectures|integer||
|city|string||
|address|string||
|building_name|string||
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user

## delivery_addressesテーブル

|Column|Type|Options|
|------|----|-------|
|postal_number|string|false,length:{maximu:8}|
|prefectures|string|null: false|
|city|string|null: false|
|address|string|null: false|
|building_name|string||
|phone_number|string||
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user

## productsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, length: { maximum: 40 }|
|price|integer|null:false|
|prescription|text|null: false, length: { maximum: 1000 }|
|profit|integer||null:false|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :comments, dependent: :destroy
- has_many :product_images, dependent: :destroy
- has_one :shipping, dependent: :destroy
- has_one :product_categories, dependent: :destroy
- has_one :products_details, dependent: :destroy
- has_one :product_brand, dependent: :destroy
- has_many :likes

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|comment|string|
|user_id|references|null: false, foreign_key: true|
|product_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product


## likesテーブル

|Column|Type|Options|
|------|----|-------|
|like|string|null:false|
|user_id|references|null: false, foreign_key: true|
|product_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product


## product_imagesテーブル

|Column|Type|Options|
|------|----|-------|
|image|string|null:false|
|user_id|references|null: false, foreign_key: true|
|product_id|references|null: false, foreign_key: true|

### Association
- belongs_to :product

## shippingsテーブル

|Column|Type|Options|
|------|----|-------|
|shipping_charges|string|null:false|
|delivery_source_area|string|null: false|
|days_to_delivery|string|null: false|
|product_id|references|null: false, foreign_key: true|

### Association
- belongs_to :product

## products_detailsテーブル

|Column|Type|Options|
|------|----|-------|
|size|integer|null:false|
|condition|integer|null: false|
|product_id|references|null: false, foreign_key: true|

### Association
- belongs_to :product

## product_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|parent_id|reference|null: false|
|product_id|reference|null: false|

### Association
- belongs_to :product
- belongs_to :parent, class_name: :product_categorie
- has_many :children, class_name: product_categorie :, foreign_key: :parent_id

## product_brandテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|parent_id|reference|null: false|
|product_id|reference|null: false|

### Association
- belongs_to :product
- belongs_to :parent, class_name: :product_brand
- has_many :children, class_name: product_brand :, foreign_key: :parent_id

## newsテーブル

|Column|Type|Options|
|------|----|-------|
|news|string|null:false|
|content|string|null: false|

### Association
- nothing
