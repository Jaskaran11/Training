require 'rails_helper'

RSpec.describe "Author", type: :request do
  it "request list of all authors" do
    author = Author.create(name: "Test author",email: 'test@author.com')
    get authors_path(page: 6)
    expect(response).to be_successful
    expect(response.body).to include("Test author")
  end
end
