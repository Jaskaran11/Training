class PeopleController < ApplicationController
  def new
    @person = Person.new 
  end

  def show 
    render js: "alert('The number is: #{params[:id]}'}"
    puts "HI";
  end

  def index
    @people = Person.all
  end
  
  def create
    @people = Person.new(user_params)
    if @people.save 
      render partial: 'person', locals: {people: @people}
  end
end 

private

def user_params
  params.require(:person).permit(:name)
end
end
