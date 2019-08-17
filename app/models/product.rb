class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  scope :active, -> (category) { where(product_category_id: category) }
  scope :sorted, -> { order('id DESC').limit(4) }
  
  enum condition_id: [:unused, :like_new, :invisibly_damaged, :slightly_damaged, :damaged, :bad]

  enum delivery_responsibility: [:including_postage, :cash_on_delivery]

  enum delivery_method: [:undecided, :easy_mercari, :yu_mail, :letter_pack, :regular_mail, :kuronekoyamato, :yu_pack, :click_post, :yu_pakcet]

  enum delivery_day: [:in_two_days, :in_three_days, :in_seven_days]

  validates :images, presence: true
  validates :name, {presence: true, length: {maximum: 40}}
  validates :description, {presence: true, length: {maximum: 1000}}
  validates :product_category_id, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999}


  belongs_to_active_hash :prefecture, optional: true
  belongs_to :product_category
  belongs_to_active_hash :prefecture
  has_many :product_images, dependent: :destroy
  has_many_attached :images
  belongs_to :buyer, class_name: 'User', :foreign_key => 'buyer_id', optional: true
  belongs_to :seller, class_name: 'User', :foreign_key => 'seller_id', optional: true
end
