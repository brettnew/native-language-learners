require 'rails_helper'

describe 'the add comments path' do
  it 'will let you add a comment', js: true do
    visit root_path
    click_link 'About us'
    click_on 'Add Comment'
    fill_in 'Username', :with => 'luv2learn'
    fill_in 'Content', :with => 'What a great idea!'
    click_on 'Add Comment'
    expect(page).to have_content 'luv2learn'
  end

  it 'will give you an error if you do not fill in all fields', js: true do
    visit root_path
    click_link 'About us'
    click_on 'Add Comment'
    click_on 'Add Comment'
    expect(page).to have_content 'Please fill in the username and content'
  end
end
