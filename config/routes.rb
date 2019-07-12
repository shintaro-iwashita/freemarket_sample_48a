Rails.application.routes.draw do
  resources :products do
    get 'confirm_purchace', on: :member
  end
  resources :users do
    get 'change', on: :member
end
end
