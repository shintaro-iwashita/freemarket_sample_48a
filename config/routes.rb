Rails.application.routes.draw do
  root "products#index"
  resources :users, only: [:new, :edit, :index]
  resources :logout, only: [:index]
  resources :card, only: [:index, :new, :create, :destroy]
  resources :products do
    get 'confirm_purchace', on: :member
  end
end
