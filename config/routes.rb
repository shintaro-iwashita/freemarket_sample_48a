Rails.application.routes.draw do
  root "users#index"
  get 'users/confirm' => 'users#confirm'
  resources :users, only: [:new, :edit]
  resources :logout, only: [:index]
end
