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
  end

  def edit
  end

  def update 
  end

  def delete
  end

  def destroy
  end
end
