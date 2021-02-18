Rails.application.routes.draw do
  root 'application#home'
  resources :recipes
  resources :country_of_origins
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
