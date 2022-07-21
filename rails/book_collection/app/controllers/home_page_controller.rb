class HomePageController < ApplicationController
  def index
    @books = Book.all
    @authors = Author.all

    @id = params['id']
    @title = params[:title]
  end

  def java
  end

  def ajax_page
    puts "he"
  end
end