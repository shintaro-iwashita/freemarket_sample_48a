class ProductsController < ApplicationController
  before_action :set_product, except:[:index, :new, :create, :show, :get_category_children, :get_category_grandchildren]
  
  def index
    @product_images = ProductImage.all
    @products = Product.all

  end

  def show
  end

  def edit
  end

  def destroy
    if @product.destroy
      redirect_to("/")
    else
      flash[:notice] = "削除に失敗しました"
    end
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

private
  def set_product
    @product = Product.find(params[:id])
  end

end
