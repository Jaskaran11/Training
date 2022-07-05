class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  helper_method :formatted_date 
  layout 'book'
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
    @book = current_user.books.new(book_params)
    if @book.save
      CrudNotificationMailer.create_notification(@book).deliver_later
      redirect_to(books_path)
    else
      render('new')
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      CrudNotificationMailer.update_notification(@book).deliver_now
      redirect_to(book_path(@book))
    else
      render('edit')
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    CrudNotificationMailer.delete_notification(@book).deliver_now
    @book.destroy
    redirect_to(books_path)
  end

  private

  def book_params
    params.require(:book).permit(:title, :price, :rating, :publisher_id, :author_id, :content, :image)
  end

  def formatted_date(date)
    date.strftime('%A, %b, %d, %Y')
  end
end
