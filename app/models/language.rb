class Language < ActiveRecord::Base
  has_many :native_languages
  has_many :users, :through => :native_languages

  validates :name, :presence => true

end
