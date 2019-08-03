class ProductsController < ApplicationController
  def index
    @product_images = ProductImage.all
    @products = Product.all

  end

  def show
  end

  def new
  end

end
