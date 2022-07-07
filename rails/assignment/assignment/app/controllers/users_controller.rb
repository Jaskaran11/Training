class UsersController < ApplicationController
  def index
    if params[:search]
      @users = User.where('lower(first_name) LIKE ?', "%#{params[:search].downcase}%").order(:id)
    else
      @users = User.all.order(:id)
    end
  end

  def show 
    @user = User.find(params[:id])
  end

  def search
  end

  def new 
    @user = User.new 
  end

  def create 
    @user = User.new user_params
    if @user.save
      Sidekiq::Client.enqueue_to_in("default", Time.now + 5.seconds, MailWorker, @user.email, @user.first_name)
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
    params.require(:user).permit(:first_name, :last_name, :email, :avatar, :gender, :about, :password, :country, :search)
  end
end
