class CategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.order("ancestry ASC").limit(13)
  end

  def show
    @images = []
    @products = Product.where(product_category_id:params[:id])
    @products.each do |p|
      @images << ProductImage.find(p.id)
    end
    @category = ProductCategory.find(params[:id])
  end

  def show2
    # // あとでproduct_categoriesのID
    @products = Product.order("id ASC").limit(100)
  end
end
