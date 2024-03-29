class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def search
  if params[:name]
    @user = User.where('name ILIKE ?', "%#{params[:name]}%")
  else
    @user = User.all
  end
  end

  private

  def user_params
    params.require(:user).permit(:name, :gender, :country)
  end
end
