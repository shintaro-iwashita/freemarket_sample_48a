class CategoriesController < ApplicationController
  def index
    @product_top = ProductCategory.where(ancestry:nil)
    @product_child = ProductCategory.where.not("ancestry LIKE ?", "%/%")
    @product_grandchild = ProductCategory.where("ancestry LIKE ?", "%/%")
    @product_categories = ProductCategory.order("ancestry ASC").limit(13)
  end

  def show
    
    cat = ProductCategory.find(params[:id])
    if cat.parent == nil
      category_children = cat.children
      min = category_children.minimum(:id)
      max = category_children.maximum(:id)
      @products = Product.where(product_category_id:min..max)
      @categoryname = cat.name
    elsif cat.name == "すべて"
      category_children = cat.parent.children
      min = category_children.minimum(:id)
      max = category_children.maximum(:id)
      @products = Product.where(product_category_id:min..max)
      @categoryname = cat.parent.name
    else
      @products = Product.where(product_category_id:params[:id])
      @categoryname = cat.name
    end
  end

end
