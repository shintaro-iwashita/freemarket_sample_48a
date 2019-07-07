Rails.application.routes.draw do
  get 'changes/edit'
  root "products#index"
  resources :users, only: [:new, :edit, :index]
  resources :logout, only: [:index]
  resources :card, only: [:index, :new, :create, :destroy]
  resources :detail, only: [:index]
  resources :products do
    get 'confirm_purchace', on: :member
  end
  resources :logout, only: [:index]
  resources :users do
    get 'change', on: :member
end
end
