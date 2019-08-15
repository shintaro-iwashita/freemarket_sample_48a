class UsersController < ApplicationController
  before_action :move_to_index,except:[:new]
  def index

  end
  
  def new

  end
  
  def move_to_index
    redirect_to action: :new unless user_signed_in?
  end
end
