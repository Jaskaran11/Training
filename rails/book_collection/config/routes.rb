Rails.application.routes.draw do
  resources :vendors

  # Defines the root path route ("/")
  root "books#index"
  #get 'authors/index'
  #get 'authors/show'
  #get 'authors/new'
  #get 'authors/edit'
  #get 'authors/delete'
  #get 'books/index'
  #get 'books/show'
  #get 'books/new'
  #get 'books/edit'
  #get 'books/delete'
  
  get 'sign_in_page/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home_page/index'
  
  resources :books do
    member do
      get :delete
    end
  end

  resources :authors do
    member do
      get :delete
    end
  end
end
