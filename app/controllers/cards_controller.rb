class CardsController < ApplicationController

  def new 
    @card = CreditCard.new
  end

  def create #PayjpとCardのデータベースを作成
    respond_to do |format|
      format.json {
        # require 'payjp'
        Payjp.api_key = ENV["PAYJP_SECRET_ACCESS_KEY"]  
        # current_user.update(token_id: params[:token])
        if current_user.creditCards == []
          response_customer = Payjp::Customer.create(card: params[:token])
          current_user.creditCards.create(token_id: response_customer.id, user_id: current_user.id)
        end
      }
    end

  def destroy
  end
end
