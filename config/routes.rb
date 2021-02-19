Rails.application.routes.draw do
  root 'application#home'
  resources :recipes
  resources :users
  get '/countries', to: 'country_of_origins#index'
  get '/countries/:id', to: 'country_of_origins#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
