Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_scope :user do
    authenticated  do
      root to: 'authors#index'
    end
    unauthenticated do
      root to: 'devise/sessions#new', as: 'unauthenticated_root'
    end
  end  

  get 'homepage', to: 'home#homepage'
  get 'dashboard', to: 'home#dashboard'

  resources :authors do 
    collection do 
      get 'searching'
      get 'hobby'
      get 'skill'
      get 'age'
      get 'search'
    end 
  end
end

