Rails.application.routes.draw do
  root "products#index"
  get 'users/confirm' => 'users#confirm'
  resources :users, only: [:new, :edit]
  resources :logout, only: [:index]
end
