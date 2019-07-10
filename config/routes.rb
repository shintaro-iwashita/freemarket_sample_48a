Rails.application.routes.draw do
<<<<<<< HEAD
  root "users#index"
  get 'users/confirm' =>'users#confirm'
  resources :users, only: [:new, :edit]
=======
  get 'changes/edit'
  root "products#index"
  resources :users, only: [:new, :edit, :index]
>>>>>>> master
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
