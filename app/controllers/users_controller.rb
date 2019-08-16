class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def index
  end
  
  def new
  end
  
end
