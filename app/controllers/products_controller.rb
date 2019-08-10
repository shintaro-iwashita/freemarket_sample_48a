class ProductsController < ApplicationController
  
  def index
    @product_images = ProductImage.all
    @products = Product.all

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

  def edit
    @product = Product.find(params[:id])
    @selected_grandchild_category = @product.product_category_id
    @category_grandchildren_array = ProductCategory.find("#{@selected_grandchild_category}").siblings
    @category_children_array = ProductCategory.find("#{@selected_grandchild_category}").parent.siblings
    @category_parent_array = ProductCategory.find("#{@selected_grandchild_category}").parent.parent.siblings
  end

  def update
    product = Product.find(params[:id])
    if product.seller_id == current_user.id
      product.update(product_params)
    end
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
