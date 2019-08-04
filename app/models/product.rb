class Product < ApplicationRecord
  belongs_to :product_category, optional: true
  has_many :product_images, dependent: :destroy
  belongs_to :buyer, class_name: 'User', :foreign_key => 'buyer_id'
  belongs_to :seller, class_name: 'User', :foreign_key => 'seller_id'
end
