require 'rails_helper'

feature 'User view challenges' do
  scenario 'succesfully' do
    challenge = create(:challenge)

    visit root_path

    expect(page).to have_content challenge.title
    expect(page).to have_content challenge.description
  end
end