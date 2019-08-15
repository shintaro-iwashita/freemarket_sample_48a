class ProductsController < ApplicationController
  before_action :set_product, except:[:index, :new, :create, :show, :get_category_children, :get_category_grandchildren]
  

  def index
    @product_images = ProductImage.all
    @products = Product.all
    @ladycategory = ProductCategory.find_by(name: 'レディース')
    @mencategory = ProductCategory.find_by(name: 'メンズ')
    @kidscategory = ProductCategory.find_by(name: 'ベビー・キッズ')
    @cosmecategory = ProductCategory.find_by(name: 'コスメ・香水・美容')
    @ladies = Product.active(@ladycategory.subtree).sorted
    @men = Product.active(@mencategory.subtree).sorted
    @kids = Product.active(@kidscategory.subtree).sorted
    @cosme = Product.active(@cosmecategory.subtree).sorted
  end


  def show
    @product = Product.find(params[:id])
    grandchild_category_id = @product.product_category_id
    @grandchild = ProductCategory.find(grandchild_category_id)
    @child = @grandchild.parent
    @parent = @child.parent
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
    if @product.seller_id != current_user.id
      redirect_to controller: :products, action: :index
    end

    @pic1 = @product.images.slice(0, 5)
    @pic2 = @product.images.slice(5, 5)
    @selected_grandchild_category = @product.product_category_id
    @category_grandchildren_array = ProductCategory.find("#{@selected_grandchild_category}").siblings
    @category_children_array = ProductCategory.find("#{@selected_grandchild_category}").parent.siblings
    @category_parent_array = ProductCategory.find("#{@selected_grandchild_category}").parent.parent.siblings
  end


  def update
    if @product.seller_id == current_user.id
      @product.update(product_params)
    end
    redirect_to controller: :products, action: :index
  end


  def destroy
    if product.seller_id == current_user.id
      if @product.destroy
        redirect_to root_path
      else
        flash[:notice] = "削除に失敗しました"
      end
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
    params.require(:product).permit(:name, :description, :size_id, :condition_id, :price, :product_category_id, :delivery_responsibility, :delivery_method, :delivery_area, :delivery_day, images: []).merge(seller_id: current_user.id)
  end


private
  def set_product
    @product = Product.find(params[:id])
  end

end
