class User < ActiveRecord::Base
  has_secure_password

  geocoded_by :zipcode
  after_validation :geocode

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/system/images/generic_avatar.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :native_language
  has_and_belongs_to_many :learn_languages

  validates :first_name, :last_name, :email, :password_digest, :presence => true
  # 
  # validates :city, :presence => true, :if => :active_or_city?
  # validates :state, :presence => true, :if => :active_or_state?
  # validates :zipcode, :presence => true, :if => :active_or_zipcode?
  # validates :bio, :presence => true, :if => :active_or_bio?
  # validates :gender, :presence => true, :if => :active_or_gender?

  validates_uniqueness_of :email

  #
  # def active?
  #   status == 'active'
  # end
  #
  # def active_or_city?
  #   status.include?('city') || active?
  # end
  #
  # def active_or_state?
  #   status.include?('state') || active?
  # end
  #
  # def active_or_zipcode?
  #   status.include?('zipcode') || active?
  # end
  #
  # def active_or_bio?
  #   status.include?('bio') || active?
  # end
  #
  # def active_or_gender?
  #   status.include?('gender') || active?
  # end


end
