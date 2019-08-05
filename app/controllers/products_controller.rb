class ProductsController < ApplicationController
  def index
    @product_images = ProductImage.all
    @products = Product.all

  end

  def show
    @products = Product.find(params[:id])
    binding.pry
  end

  def new
  end

end
