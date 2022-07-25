class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to(root_path)
    else 
    render('new')
  end
end

  
  #def for_country
   # @state = State.where(:country_id =>params[:country_id])
    #respond_to do |format|
      #format.json { render :json => @state}
  #end
#end


private

def user_params 
    params.require(:user).permit(:name, :address, :gender)
end
end
