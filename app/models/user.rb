class User < ActiveRecord::Base
  has_secure_password

  geocoded_by :zipcode
  after_validation :geocode

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/system/images/generic_avatar.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :native_language
  has_and_belongs_to_many :learn_languages

  validates :first_name, :last_name, :email, :password_digest, :presence => true

  validates_uniqueness_of :email

end
