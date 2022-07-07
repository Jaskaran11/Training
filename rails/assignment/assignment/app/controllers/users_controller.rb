class UsersController < ApplicationController
  def index
    @users = User.all.order(:id)
  end

  def show 
    @user = User.find(params[:id])
  end

  def new 
    @user = User.new 
  end

  def create 
    @user = User.new user_params
    if @user.save
      UserMailer.create_notification(@user).deliver_now
      redirect_to(users_path)
    else
      render('new')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      UserMailer.update_notification(@user).deliver_now
      redirect_to users_path(@user)
    else
      render :edit
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    UserMailer.delete_notification(@user).deliver_now
    @user.destroy
    redirect_to(users_path)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :avatar, :gender, :about, :password, :country)
  end
end
