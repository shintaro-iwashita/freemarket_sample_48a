class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  scope :recent, -> { order('id DESC').limit(4) }

  enum condition_id: [:unused, :like_new, :invisibly_damaged, :slightly_damaged, :damaged, :bad]

  enum delivery_responsibility: [:including_postage, :cash_on_delivery]

  enum delivery_method: [:undecided, :easy_mercari, :yu_mail, :letter_pack, :regular_mail, :kuronekoyamato, :yu_pack, :click_post, :yu_pakcet]

  enum delivery_day: [:in_two_days, :in_three_days, :in_seven_days]


  belongs_to_active_hash :prefecture, optional: true
  belongs_to :product_category
  belongs_to_active_hash :prefecture
  has_many :product_images, dependent: :destroy
  has_many_attached :images
  # 画像投稿機能完成後、以下のコメントアウト削除
  # has_many :product_images, dependent: :destroy
  belongs_to :buyer, class_name: 'User', :foreign_key => 'buyer_id', optional: true
  belongs_to :seller, class_name: 'User', :foreign_key => 'seller_id', optional: true
end
