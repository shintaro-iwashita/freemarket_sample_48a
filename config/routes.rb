Rails.application.routes.draw do
  root "users#index"
  resources :users, only: [:new, :edit]
  resources :logout, only: [:index]
end
