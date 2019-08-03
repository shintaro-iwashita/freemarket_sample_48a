class ProductImage < ApplicationRecord
  belongs_to :product, optional: true
end
