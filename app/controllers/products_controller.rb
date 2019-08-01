class ProductsController < ApplicationController
  def index
  end
  
  def show
    @products = Product.find(params[:id])
    # binding.pry
  end

  def new
  end

end
