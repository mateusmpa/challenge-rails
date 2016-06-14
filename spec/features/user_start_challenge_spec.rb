require 'rails_helper'

feature 'User start challenge' do
  scenario 'logged' do
    user = create(:user)
    challenge = create(:challenge)

    visit root_path
    click_link('Start')

    expect(page).to have_content challenge.title
    expect(page).to have_content challenge.description
  end

  scenario 'not logged' do
  end
end