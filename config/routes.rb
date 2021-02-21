Rails.application.routes.draw do

  root 'application#home'
  resources :recipes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'

  resources :country_of_origins, only: [:index] do
      resources :recipes, only: [:index, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
