class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.create_notification.subject
  #
  def create_notification
    mail to: 'jaskaran@gmail.com', subject: "A new entry for  has been created"
  end

  def update_notification
    mail to: 'jaskaran@gmail.com', subject: "A new entry for has been updated"
  end

  def delete_notification
    mail to: 'jaskaran@gmail.com', subject: "A new entry for  has been deleted"
  end
end
