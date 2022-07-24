Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "users#index"
  post "users/create"
  get "users/sign_up"

  get 'home/index'
  get 'home/ajax', as: 'ajax'

  resources :users do 
    collection do 
      get :states
    end
  end
end
