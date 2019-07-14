Rails.application.routes.draw do
  get 'deliverly/index'
  resources :deliverly 
  root "products#index"
  resources :products, only: [:index, :show] do
    resources :purchases, only: [:index]
  end
  resources :users, only: [:index, :new, :edit,]
  resources :logouts, only: [:index]
  resources :cards, only: [:index, :new, :create, :destroy]

end
