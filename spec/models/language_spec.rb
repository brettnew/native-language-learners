require 'rails_helper'

describe Language do
  it { should validate_presence_of :name }

  it { should have_many :users }
  it { should have_many :native_languages }

end
