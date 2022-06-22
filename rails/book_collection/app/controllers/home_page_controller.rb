class HomePageController < ApplicationController
  def index
    @books = Book.all
    @authors = Author.all

    @id = params['id']
    @title = params[:title]
  end
end