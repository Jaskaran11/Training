class HomeController < ApplicationController
  before_action :authenticate_user!

  def homepage 
  redirect_to controller: :AuthorsController, action: :index
  end

  def dashboard
  end
end