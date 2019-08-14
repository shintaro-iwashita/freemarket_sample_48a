class CategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.order("ancestry ASC").limit(13)
    @products = ProductCategory.find(params[:id]).products
  end

  def show
    @images = []
    @products = Product.where(product_category_id:params[:id])
    @products.each do |p|
      @images << ProductImage.find(p.id)
    end
    @cat = ProductCategory.find(params[:id])
    if @cat.name == "すべて" then
      @category = @cat.parent
    else
      @category = @cat
    end


  end

  def show2
    # // あとでproduct_categoriesのID
    @products = Product.order("id ASC").limit(100)
  end
end
