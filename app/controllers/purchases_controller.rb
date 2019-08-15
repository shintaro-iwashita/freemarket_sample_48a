class PurchasesController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @image = ProductImage.find(@product.id)
  end
end
