Rails.application.routes.draw do
  get 'changes/edit'
  root "products#index"
  resources :users do
    get 'change', on: :member
  end
end
