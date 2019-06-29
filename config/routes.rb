Rails.application.routes.draw do
  get 'changes/edit'
  root "products#index"
  resources :users, only: [:new, :edit]
end
