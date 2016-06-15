require 'rails_helper'

feature 'User start challenge' do
  scenario 'logged' do
    user = create(:user)
    login_as(user, :scope => :user)

    challenge = create(:challenge)

    visit root_path
    click_link('Start')

    expect(page).to have_content challenge.title
    expect(page).to have_content 'Started'
    expect(page).to have_content challenge.description
  end
end
