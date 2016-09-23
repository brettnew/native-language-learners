class User < ActiveRecord::Base
  has_secure_password

  has_many :native_languages
  has_many :languages, :through => :native_languages

  validates :first_name, :last_name, :city, :state, :zipcode, :bio, :gender, :email, :password_digest, :presence => true

  validates_uniqueness_of :email

end
