require 'rails_helper'

RSpec.describe 'Creating a new user' do
  it 'adds new user' do
    visit users_path
    click_link 'Add New User'
    fill_in 'Name', :with => 'Raj Sharma'
    fill_in 'Gender', :with => 'male'
    click_on 'Sign Up'
    expect(page).to have_content 'Raj Sharma'
  end
end
