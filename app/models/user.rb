class User < ActiveRecord::Base
  has_secure_password

  geocoded_by :zipcode
  after_validation :geocode

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :native_languages
  has_many :languages, :through => :native_languages

  validates :first_name, :last_name, :city, :state, :zipcode, :bio, :gender, :email, :password_digest, :presence => true

  validates_uniqueness_of :email

end
