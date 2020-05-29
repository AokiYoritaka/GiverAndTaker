Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'  
  resources :users, only: %i(index show)
  resources :reactions, only: %i(create)
end
