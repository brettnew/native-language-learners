require 'rails_helper'

describe 'the user log in process' do
  it 'logs in a user successfully' do
    user = FactoryGirl.create(:user)
    visit users_path
    click_on 'Login'
    fill_in 'Email', :with => 'bob@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log In'
    expect(page).to have_content 'Logged In!'
  end

  it 'does not let the user log in if credentials are incorrect' do
    user = FactoryGirl.create(:user)
    visit users_path
    click_on 'Login'
    click_on 'Log In'
    expect(page).to have_content 'Email or password is invalid!'
  end

  it 'lets user log out' do
    user = FactoryGirl.create(:user)
    visit users_path
    click_on 'Login'
    fill_in 'Email', :with => 'bob@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log In'
    click_on 'Logout'
    expect(page).to have_content 'Logged Out'
  end
end
