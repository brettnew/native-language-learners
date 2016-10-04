class PersonalForm < Reform:Form
  property :bio

  validates :bio, presence :true
end
