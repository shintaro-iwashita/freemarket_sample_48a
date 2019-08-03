class ProductsController < ApplicationController
  def index
    @product_images = ProductImage.all
    @products = Product.all

  end

  def show
  end

  def new
    @product = Product.new
    @category_parent_array = []
    ProductCategory.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.name
    end
  end

  def get_category_children
    @category_children = ProductCategory.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def get_category_grandchildren
    @category_grandchildren = ProductCategory.find("#{params[:child_id]}").children
  end

end
