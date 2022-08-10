require 'rails_helper'

RSpec.describe "authors/new", type: :view do
  before(:each) do
    assign(:author, Author.new(
      name: "Jaskaran",
      email: "abc@abc.com"
    ))
  end
  it "has author name" do
    render
  assert_select "form[action=?][method=?]", authors_path, "post" do
  assert_select "input[name=?]", "author[name]"
  end
  end
end
