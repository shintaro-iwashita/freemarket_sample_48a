Rails.application.routes.draw do
  devise_for :users,
      controllers: {
        omniauth_callbacks: 'users/omniauth_callbacks'
  }
  
  root "products#index"
  resources :products, only: [:index, :show, :new, :create] do
    resources :purchases, only: [:index]

    collection do
      get 'get_category_children', defaults: {format: 'json'}
      get 'get_category_grandchildren', defaults: {format: 'json'}
    end
  end
  resources :users, only: [:index, :new, :edit,] do
    resources :confirms, only: [:edit]
  end
  
  resources :categories, only: [:index]
  
  # 新規会員登録画面お届け先住所
  resources :addresses, only: [:new, :create] 
  # 新規会員登録完了画面
  resources :completions, only: [:index]
  # 新規会員登録お支払い情報画面
  resources :payments, only: [:new, :create]

  resources :logouts, only: [:index]
  resources :cards, only: [:index, :new, :create, :destroy]
  resources :registrations, only: [:new]
end
