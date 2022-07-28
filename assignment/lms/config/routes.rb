Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'authors#index'
  #resources :authors
  #root 'home#homepage'
  get 'homepage', to: 'home#homepage'
  get 'dashboard', to: 'home#dashboard'
  root "authors#index"

  get 'authors/search'

  resources :authors do 
    collection do 
      get 'searching'
    end 
  end

  resources :author do 
    collection do 
      get 'search'
    end
  end
end

