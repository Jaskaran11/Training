class UsersController < ApplicationController
  def index
    @user = User.all
  end  

  def signup
    @user = User.new(user_params)
    if @user.save 
    redirect_to(users_path)
    else 
    render('new')
  end
end

private

def user_params
  params.require(:user).permit(:name, :address, :gender, :profile)
end
end
