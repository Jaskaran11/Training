class UsersController < ApplicationController
  def index
    @user = User.all
  end  

  def sign_up
    @user = User.new
  end 

  def create
    @user = User.new(user_params)
    if @user.save 
    redirect_to(root_path)
    else 
    render('sign_up')
  end
end

private

def user_params
  params.require(:user).permit(:name, :address, :gender, :profile)
end
end
