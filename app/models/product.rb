class Product < ApplicationRecord
  belongs_to :ProductCategory, optional: true
  has_many :product_images, dependent: :destroy
end
