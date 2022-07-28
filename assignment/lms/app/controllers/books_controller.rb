class BooksController < ApplicationController
  def search 
    if params[:title]
      @book = Book.where('title LIKE ?', "%#{params[:title]}%")
      redirect_to 'authors/search.js.erb'
    else 
   @book = Book.all
  end
end
end
