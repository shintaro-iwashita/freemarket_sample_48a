class Product < ApplicationRecord
  belongs_to :ProductCategory
  has_many :product_images, dependent: :destory
end
