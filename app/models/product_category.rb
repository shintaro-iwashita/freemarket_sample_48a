class ProductCategory < ApplicationRecord

  has_ancestry
  has_many :products
end
