class CategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.all.order("ancestry ASC").limit(13)
  end
end