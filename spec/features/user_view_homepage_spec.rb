require 'rails_helper'

feature 'User view homepage' do
  scenario 'succesfully' do
    visit root_path
    expect(page).to have_content 'Welcome'
  end
end