class ProductsController < ApplicationController

  def index
    @product_images = ProductImage.all
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    grandchild_category_id = @product.product_category_id
    @grandchild_name = ProductCategory.find(grandchild_category_id)
    @child_name = @grandchild_name.parent
    @parent_name = @child_name.parent
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
