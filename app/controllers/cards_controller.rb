class CardsController < ApplicationController

  def new 
    @card = CreditCard.new
  end

  def create #PayjpとCardのデータベースを作成
    respond_to do |format|
      format.json {
        Payjp.api_key ='sk_test_00e03746c60c070e9aaf6851' 
          current_user.creditCards == []
          response_customer = Payjp::Customer.create(card: params[:token])
          current_user.creditCards.create(token_id: response_customer.id, user_id: current_user.id)
      }
    end
  end

  def destroy
  end
end
