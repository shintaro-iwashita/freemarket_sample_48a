class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :prefecture

  enum condition_id: [:unused, :like_new, :invisibly_damaged, :slightly_damaged, :damaged, :bad]

  enum shipping_responsibility: [:including_postage, :cash_on_delivery]

  enum shipping_method: [:undecided, :easy_mercari, :yu_mail, :letter_pack, :regular_mail, :kuronekoyamato, :yu_pack, :click_post, :yu_pakcet]

  enum shipping_day: [:in_two_days, :in_three_days, :in_seven_days]



end
