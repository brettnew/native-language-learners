require 'rails_helper'

describe 'showing the user profile' do
  it 'directs user to their profile' do
    user = FactoryGirl.create(:user)
    visit users_path
    click_on 'Login'
    fill_in 'Email', :with => 'bob@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log In'
    click_on 'Bob'
    expect(page).to have_content('Bob Jones')
  end
end
