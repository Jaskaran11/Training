require "rails_helper"

RSpec.describe "CrudNotficationMailer", type: :mailer do
  test "create_notification" do
      expect(mail.subject).to eq("Create")
      expect(mail.to).to eq(["admin@example.com"])
    end
  end
