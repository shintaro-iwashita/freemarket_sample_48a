class ProductsController < ApplicationController
  
  def index
    @product_images = ProductImage.all
    @products = Product.all
    @ladycategory = ProductCategory.find(1)
    @mencategory = ProductCategory.find(219)
    @kidscategory = ProductCategory.find(378)
    @cosmecategory = ProductCategory.find(872)
    @ladies = Product.where(product_category_id: @ladycategory.subtree).order('id DESC').limit(4)
    @men = Product.where(product_category_id: @mencategory.subtree).order('id DESC').limit(4)
    @kids = Product.where(product_category_id: @kidscategory.subtree).order('id DESC').limit(4)
    @cosme = Product.where(product_category_id: @cosmecategory.subtree).order('id DESC').limit(4)
  end

  def show
  end

  def new
    @product = Product.new
    @category_parent_array = ProductCategory.where(ancestry: nil)
  end

  def create
    Product.create(product_params)
    redirect_to controller: :products, action: :index
  end

  def get_category_children
    @category_children = ProductCategory.find_by(id: "#{params[:parent_id]}", ancestry: nil).children
  end

  def get_category_grandchildren
    @category_grandchildren = ProductCategory.find("#{params[:child_id]}").children
  end

  def product_params
    params.require(:product).permit(:name, :description, :size_id, :condition_id, :price, :product_category_id, :delivery_responsibility, :delivery_method, :delivery_area, :delivery_day).merge(seller_id: current_user.id)
  end

end
