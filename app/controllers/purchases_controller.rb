class PurchasesController < ApplicationController

  def index
    @product = Product.find(params[:product_id])
    @image = ProductImage.find(@product.id)
  end

  def create
    @product = Product.find(params[:product_id])
    if @product.seller.id != current_user.id && @product.buyer_id == nil
      pay(@product)
      if @product.update(buyer_id: current_user.id)
        flash[:notice] = "商品を購入しました！"
        redirect_to root_path
      else
        flash[:alert] = "商品の購入に失敗しました…"
        redirect_to root_path
      end
    else
      flash[:alert] = "商品の購入に失敗しました…"
      redirect_to root_path
    end
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


