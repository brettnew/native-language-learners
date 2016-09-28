require 'rails_helper'

describe 'the edit user profile path' do
  it 'will let you edit user profile', js: true do
    user = FactoryGirl.create(:user)
    visit users_path
    click_on 'Login'
    fill_in 'Email', :with => 'bob@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log In'
    click_on 'Bob'
    click_on 'Edit Profile'
    fill_in 'first_name', :with => 'Bobby'
    click_on 'Update Account'
    expect(page).to have_content 'Bobby'
  end
end
