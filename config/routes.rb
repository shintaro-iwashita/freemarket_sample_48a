Rails.application.routes.draw do
  root "products#index"
  resources :products, only: [:index, :show] do
    resources :purchases, only: [:index]
  end
  resources :users, only: [:index, :new, :edit,]
  resources :logouts, only: [:index]
  resources :cards, only: [:index, :new, :create, :destroy]
  resources :registrations, only: [:new]
  
  resources :products do
    get 'confirm_purchace', on: :member
  end
  resources :users do
    get 'change', on: :member
  end
end
