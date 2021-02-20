Rails.application.routes.draw do
  root 'application#home'
  resources :recipes
  # get '/countries', to: 'country_of_origins#index'
  # get '/countries/:id', to: 'country_of_origins#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/dinner', to: 'recipes#dinner'
  get '/breakfast', to: 'recipes#breakfast'
  get '/lunch', to: 'recipes#lunch'
  get '/snacks', to: 'recipes#snacks'

  resources :country_of_origins, only: [:show, :index] do
      resources :recipes, only: [:index, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
