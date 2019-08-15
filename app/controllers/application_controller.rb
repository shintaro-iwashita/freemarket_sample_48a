class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

def set_search
  @search = Product.ransack(params[:q])
  @search_products = @search.result(distinct: true)
end

  protect_from_forgery with: :null_session

  protected

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_permitted_parameters
    added_attrs = [ :first_name,:first_name_kana,:family_name_kana,:family_name,:nickname,:email, :password, :password_confirmation,:birthday_year,:birthday_month,:birthday_day ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
