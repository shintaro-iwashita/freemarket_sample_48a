class CardsController < ApplicationController

  def new 
    @card = CreditCard.new
  end

  def create #PayjpとCardのデータベースを作成
    respond_to do |format|
      format.json {
        Payjp.api_key = 'sk_test_7841bdccba9b357aa48f99c7'
          current_user.creditCards == []
          response_customer = Payjp::Customer.create(card: params[:token])
          current_user.creditCards.create(token_id: response_customer.id, user_id: current_user.id)
      }
    end
  end

  def destroy
  end
end
