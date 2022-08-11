# spec/features/update_city_spec.rb

require 'rails_helper'

RSpec.describe 'Updating a user', type: :feature do
  scenario 'valid inputs' do
    user = User.create!(name: 'Virat Kohli')
    visit edit_user_path(id: user.id)
    fill_in 'Name', with: 'Yuvraj Singh'
    click_on 'Sign Up'
    visit users_path
    expect(page).to have_content('Yuvraj Singh')
  end
end
