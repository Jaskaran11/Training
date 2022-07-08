class MailWorker
  include Sidekiq::Worker

  def perform(email, first_name)
    @email = email
    @first_name = first_name
    UserMailer.create_notification(@email, @first_name).deliver_later
  end
end
