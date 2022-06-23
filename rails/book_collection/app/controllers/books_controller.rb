class BooksController < ApplicationController
  def index
    @book = Book.order('title')
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    #Instantiate a new object using form parameters
    @book = Book.new(book_params)
    #Save the object
    if @book.save
    #If save fails, redirect to the index action
      redirect_to(books_path)
    else 
      # If save fails, redisplay the form so user can fix problem
      render('new')
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update 
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to(book_path(@book))
    else 
      render('edit')
    end
  end

  def delete
  end

  def destroy
  end

  private 

  def book_params
    params.require(:book).permit(:title, :price, :rating)
  end
end

