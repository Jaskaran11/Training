# spec/features/delete_city_spec.rb

require 'rails_helper'

RSpec.describe 'Deleting a user', type: :feature do
  scenario 'success' do
    User.create!(name: 'Stephen King')
    visit users_path
    expect(page).to have_content('Stephen King')

    click_on 'Destroy', match: :first
    expect(page).not_to have_content(name: 'Stephen King')
  end
end
