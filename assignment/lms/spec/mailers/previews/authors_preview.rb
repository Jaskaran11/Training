# Preview all emails at http://localhost:3000/rails/mailers/authors
class AuthorsPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/authors/new
  def new
    AuthorsMailer.new
  end

end
