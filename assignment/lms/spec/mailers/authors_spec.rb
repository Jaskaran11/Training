require "rails_helper"

RSpec.describe CrudNotificationMailer, type: :mailer do
  describe "new" do
    let(:mail) { CrudNotificationMailer.new }

    it "renders the headers" do
      expect(mail.subject).to eq("New")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
