Rails.application.routes.draw do
  root 'application#home'
  resources :recipes
  get '/countries', to: 'country_of_origins#index'
  get '/countries/:id', to: 'country_of_origins#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user' # this is not working
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
