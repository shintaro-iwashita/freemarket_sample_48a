class ProductCategory < ApplicationRecord

  has_ancestry
  has_many :products
  # has_many :products, through: :product_middle_categories
  # has_many :product_middle_categories
end