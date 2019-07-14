Rails.application.routes.draw do
  root "products#index"
  resources :cards, only: [:index, :new, :create, :destroy]
  resources :registrations, only: [:new]

  resources :products do
    get 'confirm_purchace', on: :member
  end
  resources :logout, only: [:index]
  resources :confirms, only: [:edit]
  resources :users do
    get 'change', on: :member
  end
end
