require 'rails_helper'

describe NativeLanguage do
  it { should belong_to :user }
  it { should belong_to :language }
end
