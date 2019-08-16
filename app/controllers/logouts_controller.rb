class LogoutsController < ApplicationController
  before_action :move_to_index
  def index
  end

  def move_to_index
    redirect_to root_path unless user_sign_in?
  end

end
