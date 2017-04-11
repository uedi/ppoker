Rails.application.routes.draw do
  
  devise_for :users
  #resources :users, only: [:index]
  resources :teams, only: [:index, :show]
  #resources :memberships, only: [:index]
  
  root 'home#index'
  
  # TEAMS
  post '/teams/new' => 'teams#create'
  post '/teams/:id/join' => 'memberships#new'
  
  # MEMBERSHIPS
  post '/memberships/invite' => 'memberships#invite'
  
  # STORIES
  post '/teams/:id/stories' => 'stories#create'
  
end
