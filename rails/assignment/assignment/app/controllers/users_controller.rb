class UsersController < ApplicationController
  USERS_PER_PAGE = 10

  def index
    @page = params.fetch(:page, 0).to_i
    if params[:search]
      @users_count = User.where('lower(first_name) LIKE ?', "%#{params[:search].downcase}%").count 
      @users = User.where('lower(first_name) LIKE ?', "%#{params[:search].downcase}%").order(:id).offset(@page * USERS_PER_PAGE).limit(USERS_PER_PAGE)
    else
      @users_count = User.all.count
      @users = User.all.order(:id).offset(@page * USERS_PER_PAGE).limit(USERS_PER_PAGE)
    end
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
