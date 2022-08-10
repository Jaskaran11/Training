require "rails_helper"

RSpec.describe "routes for Authors", type: :routing do
  it "routes /authors to the articles controller" do
    expect(get("/authors")).to route_to("authors#index")
  end
end
