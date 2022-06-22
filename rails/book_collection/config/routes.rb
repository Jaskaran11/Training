Rails.application.routes.draw do
  get 'sign_in_page/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home_page/index'
  # Defines the root path route ("/")
  root "home_page#index"

end
