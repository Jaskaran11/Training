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

  def searching
    if params[:name] 
      @authors = Author.where('name ILIKE ?', "%#{params[:name]}%")
    elsif  params["@author"]
      author = params["@author"]
      y = author[:id].to_i
      @authors = Author.where('id = ?', "#{y}")
    else
    @authors = Author.all  
    end
  end
  
  def hobby 
    if params[:hobby]
      @authors = Author.include?("%#{params[:hobby]}%")
    else  
      @authors = Author.all
    end
  end

  def delete  
    @author = Author.find(params[:id])
  end

  def search 
    if params[:title]
      @book = Book.where('title ILIKE ?', "%#{params[:title]}%")
      #redirect_to 'authors/search.js.erb'
    else 
   @book = Book.all
  end
end

  def update 
    @author = Author.find(params[:id])
    if @author.update(authors_params)
        redirect_to (author_path(@author))
    else 
      render :edit
    end
  end


  def author_info
    @author = Author.find(params[:id].to_i)

    render json: {
      content: render_to_string({
        partial: 'page',
        layout: nil
      })
    }
  end


  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to(authors_path)
  end

  def authors_params
    params.require(:author).permit(:name, :email, :phone_no, :dob, :hobby => [], :skill => [])
  end
end
