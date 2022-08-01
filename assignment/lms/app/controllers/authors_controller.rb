class AuthorsController < ApplicationController

  def index
    @author = Author.paginate(page: params[:page], per_page: 2)
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

  
  #def searching
    #if params[:name] 
      #@authors = Author.where('name ILIKE ?', "%#{params[:name]}%")
    #elsif  params["@author"]
      #author = params["@author"]
      #y = author[:id].to_i
      #@authors = Author.where('id = ?', "#{y}")
    #else
    #@authors = Author.all  
    #end
  #end
  
  

  #def skill 
    #if params[:name] 
      #@authors = Author.where('name ILIKE ?', "%#{params[:name]}%")
    #elsif  params["@author"]
      #author = params["@author"]
      #y = author[:id].to_i
      #@authors = Author.where('id = ?', "#{y}")
    #else
    #@authors = Author.all  
    #end
  #end
  
  def skill 
    if params[:skill]
      @authors = Author.where("'#{params[:skill]}' = ANY (skill)")
    else  
      @authors = Author.all
    end
  end

  def hobby 
    if params[:hobby]
      @authors = Author.where("'#{params[:hobby]}' = ANY (hobby)")
    else  
      @authors = Author.all
    end
  end
  
  def age 
    if params[:age]
      @authors = Author.where("#{params[:age]}")
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
      CrudNotificationMailer.update_notification(@author).deliver_now
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
  CrudNotificationMailer.delete_notification(@author).deliver_now
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to(authors_path)
  end

  private
  def author_params
    params.require(:author).permit(:name, :email, :phone_no, :dob, :hobby => [], :skill => [])
  end
end
