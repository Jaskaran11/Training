Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#index"
  get "users/new"
  post "users/create"

  get 'home/index'
  get 'home/ajax', as: 'ajax'

  get 'welcome/update_cities', as: 'update_cities'
  get 'welcome/show'
end
