Rails.application.routes.draw do
  root "products#index"
  resources :users, only: [:new, :edit, :index]
end
