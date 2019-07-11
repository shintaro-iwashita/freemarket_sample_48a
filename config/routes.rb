Rails.application.routes.draw do
  get 'changes/edit'
  root "products#index"
  resources :products, only: [:index, :show]
  resources :users, only: [:new, :edit, :index]
  resources :logouts, only: [:index]
  resources :cards, only: [:index, :new, :create, :destroy]
  resources :products do
    get 'confirm_purchace', on: :member
  end
  resources :users do
    get 'change', on: :member
end
end
