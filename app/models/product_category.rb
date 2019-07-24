class ProductCategory < ApplicationRecord

  belongs_to :product
  has_ancestry

end
