Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/search',to: "users#search"
  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"

  get "users/api"

  resources :users

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
end
