require 'rails_helper'

describe NativeLanguage do
  it { should validate_presence_of :name }
  it { should have_many :users }

end
