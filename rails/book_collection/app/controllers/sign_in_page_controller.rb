class SignInPageController < ApplicationController
  def index
    redirect_to(:controller => 'home_page', :action => 'index') 
  end
  
end
