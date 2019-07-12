Rails.application.routes.draw do
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
