Rails.application.routes.draw do
  root "products#index"
  resources :items, only: [:index]
  resources :users, only: [:new, :edit]
end
