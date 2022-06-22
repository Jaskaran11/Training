class CheckEmpty
  def after_save(author)
    if author.name.blank?
     print "Author Name is blank!"
    end
  end
end
  