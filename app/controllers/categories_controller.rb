class CategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.order("ancestry ASC").limit(13)
  end

  def show
    @products = Product.order("id ASC").limit(100)
  end
end
