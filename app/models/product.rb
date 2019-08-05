class Product < ApplicationRecord

  enum condition_id: [:unused, :like_new, :invisibly_damaged, :slightly_damaged, :damaged, :bad]

  enum delivery_responsibility: [:including_postage, :cash_on_delivery]

  enum delivery_method: [:undecided, :easy_mercari, :yu_mail, :letter_pack, :regular_mail, :kuronekoyamato, :yu_pack, :click_post, :yu_pakcet]

  enum delivery_day: [:in_two_days, :in_three_days, :in_seven_days]


  belongs_to :product_category, optional: true
  has_many :product_images, dependent: :destroy
end
