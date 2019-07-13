Rails.application.routes.draw do
  devise_for :users
  root "products#index"
  resources :products, only: [:index, :show] do
    resources :purchases, only: [:index]
  end
  resources :logouts, only: [:index]
  resources :cards, only: [:index, :new, :create, :destroy]

end
