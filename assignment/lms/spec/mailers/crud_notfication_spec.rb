require "rails_helper"

RSpec.describe CrudNotificationMailer, type: :mailer do
  describe "mail sent" do
    let(:author) { FactoryBot.create(:author) }

    let(:mail) { CrudNotificationMailer.create_notification(author) }

    it "renders the headers" do
      expect(mail.subject).to eq("A new entry for Author has been created.")
      expect(mail.to).to eq(["admin@example.com"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hello")
    end
  end
end
