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
