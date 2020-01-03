Rails.application.routes.draw do
  resources :searches
  resources :search_results
  resources :watchlists
  resources :movies
  resources :users
  
  root to: "movie#index"

  get '/login', to: "auth#login"
  post '/login', to: "auth#verify"

  get '/signup', to: "users#new"
  post '/signup', to: "users#create"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
