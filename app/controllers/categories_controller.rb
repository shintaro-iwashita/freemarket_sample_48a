class CategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.order("ancestry ASC").limit(13)
  end

  def show
    # // あとでproduct_categoriesのID
    @products = Product.order("id ASC").limit(100)
  end
end
