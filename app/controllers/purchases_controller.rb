class PurchasesController < ApplicationController

  def index
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @card = 
    if @product.seller.id != current_user.id && @product.buyer_id == nil
      card = CreditCard.where(user_id: current_user.id).first
      if card == nil then
        redirect_to new_card_path
      else
        pay(@product)
        if @product.update(buyer_id: current_user.id)
          flash[:notice] = "商品を購入しました！"
          redirect_to root_path
        else
          flash[:alert] = "商品の購入に失敗しました…"
          redirect_to root_path
        end
      end
    else
      flash[:alert] = "商品の購入に失敗しました…"
      redirect_to root_path
    end
  end


  private
  
  def pay(product)
    card = CreditCard.where(user_id: current_user.id).first
    Payjp.api_key = 'sk_test_8e0230c63b87b2a6b6c8b38f'
    Payjp::Charge.create(
    :amount => product.price, #支払金額を入力（itemテーブル等に紐づけても良い）
    :customer => card.token_id, #顧客ID
    :currency => 'jpy', #日本円
  )
  end
end


