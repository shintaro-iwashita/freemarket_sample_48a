class CategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.order("ancestry ASC").limit(13)
    # @products = ProductCategory.find(params[:id]).products
  end

  def show
    @images = []
    @products = Product.where(product_category_id:params[:id])
    cat = ProductCategory.find(params[:id])
    if cat.parent == nil then
      category_children = cat.children
      min = category_children.minimum(:id)
      max = category_children.maximum(:id)
      @products = Product.where(product_category_id:min..max)
      @categoryname = cat.name
    elsif cat.name == "すべて" then
      category_children = cat.parent.children
      min = category_children.minimum(:id)
      max = category_children.maximum(:id)
      @products = Product.where(product_category_id:min..max)
      @categoryname = cat.parent.name
    else
      @categoryname = cat.name
    end
    @products.each do |p|
      @images << ProductImage.find(p.id)
    end
  end

end
