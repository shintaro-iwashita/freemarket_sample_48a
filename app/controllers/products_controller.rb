class ProductsController < ApplicationController
  def index
  end
  
  def show
    @products = Product.all
    binding.pry
  end

  def new
  end

end
