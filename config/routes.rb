Rails.application.routes.draw do
  root "products#index"
  resources :users, only: [:new, :edit]
  resources :logout, only: [:index]
  resources :detail, only: [:index]
end
