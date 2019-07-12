Rails.application.routes.draw do
  root "products#index"
  resources :users, only: [:new, :edit]
  resources :logout, only: [:index]
  resources :registrations, only: [:new]
  resources :products, only: [:index, :show]
  resources :users, only: [:index, :new, :edit,]
  resources :logouts, only: [:index]
  resources :cards, only: [:index, :new, :create, :destroy]
  resources :products do
    get 'confirm_purchace', on: :member
  end
  resources :users do
    get 'change', on: :member
end
