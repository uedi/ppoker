Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:index]
  resources :teams, only: [:index]
  resources :memberships, only: [:index]
  
  root 'home#index'
  
end
