Rails.application.routes.draw do
  
  root "products#index"
  resources :products, only: [:index, :show] do
    resources :purchases, only: [:index]
  end
  resources :users, only: [:index, :new, :edit,] do
    resources :confirms, only: [:edit]
  end
  resources :logouts, only: [:index]
  resources :cards, only: [:index, :new, :create, :destroy]
  resources :registrations, only: [:new]

end
