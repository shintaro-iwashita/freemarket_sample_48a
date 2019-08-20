class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def index
    @category_parent = ProductCategory.where(ancestry: nil)
  end
  
  def new
  end
  
end
