class PurchasesController < ApplicationController

  def index
    @product = Product.find(params[:product_id])
  end
  
  def create
    @product = Product.find(params[:product_id])
    pay(@product)
    @product.update(buyer_id: current_user.id)
    redirect_to product_path(@product)
  end


  private
  
  def pay(product)
    card = CreditCard.where(user_id: current_user.id).first
    Payjp.api_key = ENV["PAYJP_SECRET_ACCESS_KEY"]
    Payjp::Charge.create(
    :amount => product.price, #支払金額を入力（itemテーブル等に紐づけても良い）
    :customer => card.token_id, #顧客ID
    :currency => 'jpy', #日本円
  )
  end
end


