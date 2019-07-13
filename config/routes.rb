Rails.application.routes.draw do
<<<<<<< Updated upstream
  devise_for :users
=======
  devise_for :installs
>>>>>>> Stashed changes
  root "products#index"
  resources :products, only: [:index, :show] do
    resources :purchases, only: [:index]
  end
  resources :logouts, only: [:index]
  resources :cards, only: [:index, :new, :create, :destroy]

end
