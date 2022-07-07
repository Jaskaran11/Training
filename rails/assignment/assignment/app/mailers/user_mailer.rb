class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.create_notification.subject
  #
  def create_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'jaskaran@gmail.com', subject: "A new entry for #{object.class} has been created"
  end

  def update_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'jaskaran@gmail.com', subject: "A entry for #{object.class} has been updated"
  end

  def delete_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'jaskaran@gmail.com', subject: "A entry for #{object.class} has been deleted"
  end
end
