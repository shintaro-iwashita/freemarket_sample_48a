class CategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.order("ancestry ASC").limit(13)
    @products = ProductCategory.find(params[:id]).products
  end
end
