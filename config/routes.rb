Rails.application.routes.draw do
  root "products#index"
  resources :products, only: [:index, :show] do
    resources :purchases, only: [:index]
  end
  resources :users, only: [:index, :new, :edit,] do
    resources :confirms, only: [:edit]
  end

  # 新規会員登録画面お届け先住所
  resources :adresses, only: [:new, :create] 
  # 新規会員登録完了画面
  resources :completions, only: [:index]

  resources :logouts, only: [:index]
  resources :cards, only: [:index, :new, :create, :destroy]
  resources :registrations, only: [:new]
end
