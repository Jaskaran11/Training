require 'rails_helper'

RSpec.describe Admin, type: :model do
  it "must have an age greater than 21" do
    admin = FactoryBot.create(:admin)
    expect(admin.age).to be > 21
  end
  it "is valid if email present" do
    admin = FactoryBot.build_stubbed(:admin)
    expect(admin.email).to eq("name+2example.com")
  end
end
