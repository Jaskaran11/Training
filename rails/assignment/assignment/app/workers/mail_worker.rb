class MailWorker
  include Sidekiq::Worker

  def perform(email, first_name)
    @email = email
    @first_name = first_name
    UsersConfirmationMailer.create_notification(@email, @first_name).deliver_later
  end
end
