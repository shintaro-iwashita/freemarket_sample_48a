class PurchasesController < ApplicationController

  def index
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    if @product.seller.id != current_user.id && @product.buyer_id == nil
      card = CreditCard.where(user_id: current_user.id).first
      if card == nil then
        redirect_to cards_path
      else
        pay(@product)
        if @product.update(buyer_id: current_user.id)
          flash[:notice] = "商品を購入しました！"
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



  def  done
    @product_purchaser= Product.find(params[:id])
    @product_purchaser.update( purchaser_id: current_user.id)
  end


  private
  
  def pay(product)
    card = CreditCard.where(user_id: current_user.id).first
    Payjp.api_key = "sk_test_00e03746c60c070e9aaf6851"
    Payjp::Charge.create(
    :amount => product.price, #支払金額を入力（itemテーブル等に紐づけても良い）
    :customer => card.token_id, #顧客ID
    :currency => 'jpy', #日本円
    )
  end
end


