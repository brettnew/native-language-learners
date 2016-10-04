class AccountForm < Reform::Form
  property :city
  property :state
  property :zipcode
  property :gender

  validates :city, :state, :zipcode, :gender, presence: true
end
