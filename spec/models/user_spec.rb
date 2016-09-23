require 'rails_helper'

describe User do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should validate_presence_of :zipcode }
  it { should validate_presence_of :bio }
  it { should validate_presence_of :gender }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password_digest }

  it { should have_many :native_languages }
  it { should have_many :languages }
  
end
