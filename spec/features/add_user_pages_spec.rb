require 'rails_helper'

describe 'the add a user process' do
  it 'adds a new user' do
    visit users_path
    click_link 'Create account'
    fill_in 'First name', :with => 'Bob'
    fill_in 'Last name', :with => 'Jones'
    fill_in 'City', :with => 'Portland'
    fill_in 'State', :with => 'OR'
    fill_in 'Zipcode', :with => 12345
    choose('user_gender_male')
    fill_in 'Bio', :with => 'I like stuff'
    fill_in 'Email', :with => 'bob@email.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Create Account'
    expect(page).to have_content 'Bob'
  end

  it 'displays errors when fields are not filled in' do
    visit users_path
    click_link 'Create account'
    click_button 'Create Account'
    expect(page).to have_content 'Form is invalid'
  end
end
