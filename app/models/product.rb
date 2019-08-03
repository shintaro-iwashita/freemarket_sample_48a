class Product < ApplicationRecord

  belongs_to :product_category, optional: true
  has_many :product_images, dependent: :destroy
end
