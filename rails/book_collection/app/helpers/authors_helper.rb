module AuthorsHelper
  def format_name(author)
    if user.gender == "Male"
      "Mr. #{author.name}"
    else  
      "Ms. #{author.name}"
    end
  end
end
