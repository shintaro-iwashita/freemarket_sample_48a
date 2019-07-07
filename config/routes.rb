Rails.application.routes.draw do
  root "products#index"
  get 'users/new2' => 'users#new2'
  resources :users, only: [:new, :edit]
  resources :logout, only: [:index]
end
