class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def index
    @category_parent = ProductCategory.where(ancestry: nil)
  end
  
  def new

  end
  
  def move_to_index
    redirect_to action: :new unless user_signed_in?
  end
end
