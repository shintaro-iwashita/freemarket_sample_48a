class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  enum condition_id: [:unused, :like_new, :invisibly_damaged, :slightly_damaged, :damaged, :bad]

  enum delivery_responsibility: [:including_postage, :cash_on_delivery]

  enum delivery_method: [:undecided, :easy_mercari, :yu_mail, :letter_pack, :regular_mail, :kuronekoyamato, :yu_pack, :click_post, :yu_pakcet]

  enum delivery_day: [:in_two_days, :in_three_days, :in_seven_days]


  belongs_to_active_hash :prefecture, optional: true
  # has_many :product_categories, through: :product_middle_categories
  # has_many :product_middle_categories
  belongs_to :product_category
  # accepts_nested_attributes_for :product_middle_categories
  belongs_to_active_hash :prefecture
  has_many :product_images, dependent: :destroy
  belongs_to :buyer, class_name: 'User', :foreign_key => 'buyer_id', optional: true
  belongs_to :seller, class_name: 'User', :foreign_key => 'seller_id', optional: true
end
