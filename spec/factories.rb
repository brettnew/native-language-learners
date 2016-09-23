FactoryGirl.define do
  factory(:user) do
    first_name("Bob")
    last_name("Jones")
    city("Portland")
    state("OR")
    zipcode(97205)
    bio("I like to learn!")
    gender("male")
    email("bob@email.com")
    password("password")
    password_confirmation("password")
  end

  factory(:language) do
    name("English")
  end
end
