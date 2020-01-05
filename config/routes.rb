Rails.application.routes.draw do
  resources :searches
  resources :search_results
  resources :watchlists
  resources :movies
  resources :users
  
  root to: "movies#index"

  get '/flix', to: "auth#login"
  post '/flix', to: "auth#verify"

  delete '/watchlist/:id', to: 'watchlists#destroy', as: 'wachlist'

  #get '/signup', to: "users#new"
  #post '/signup', to: "users#create"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
