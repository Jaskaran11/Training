Rails.application.routes.draw do
  #devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/search',to: "users#search"
  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"

  get "users/api"
  post "users/api"
  
  resources :users

  namespace :api do
    namespace :v1 do
      resources :users
      resources :sessions, only: [:create, :destroy]
    end
  end
end
