class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.create_notification.subject
  #
  def create_notification(first_name, email)
    @first_name = first_name
    @email = email
    mail to: 'jaskaran@gmail.com', subject: "A new entry for  has been created"
  end

  
end
