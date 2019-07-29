class CategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.all.order("ancestry ASC").limit(13)
    ProductCategory.find(1).children
  end
end