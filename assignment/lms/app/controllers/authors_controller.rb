class AuthorsController < ApplicationController
  def index
    @author = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new 
    @author = Author.new
  end

  def edit 
    @author = Author.find(params[:id])
  end

  def create 
    @author = Author.new(author_params)
    if @author.save 
      CrudNotificationMailer.create_notification(@author).deliver_now
      redirect_to authors_path
    else  
      render :new 
    end
  end

  def update 
    @author = Author.find(params[:id])
    if @author.update(author_params)
        redirect_to authors_path(@author)
    else 
      render :edit
    end
  end

  def destroy
    @author.destroy 
    redirect_to authors_index_path
  end

  private 
  def authors_params
    params.require(:author).permit(:name, :email, :phone_no, :dob, :hobby, :skill)
  end
end
