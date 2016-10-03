class User < ActiveRecord::Base
  has_secure_password

  geocoded_by :zipcode
  after_validation :geocode

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/system/images/generic_avatar.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :native_languages
  has_many :languages, :through => :native_languages
  accepts_nested_attributes_for :native_languages, :languages

  # validates :first_name, :last_name, :city, :state, :zipcode, :bio, :gender, :email, :password_digest, :presence => true

  # validates_presence_of :first_name, :last_name, :email, :password_digest, :if => lambda { |o| o.current_step == "initial_info" }
  # validates_presence_of :city, :state, :zipcode, :bio, :gender, :if => lambda { |o| o.current_step =="about_you"}

  validates :first_name, :last_name, :email, :password_digest, presence: true, if: :step1?
  validates :city, :state, :zipcode, :bio, :gender, presence: true, if: :step2?

  validates_uniqueness_of :email

  include MultiStepModel

  def self.total_steps
    2
  end
end
