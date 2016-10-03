User.create(email: 'brett@gmail.com', first_name: 'Brett', last_name: 'New', city: 'Portland', state: 'OR', zipcode: 97205, bio: 'I love to learn', gender: 'female', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/brett_pic.jpg")))
User.create(email: 'sami@gmail.com', first_name: 'Sami', last_name: 'Al-Jamal', city: 'Portland', state: 'OR', zipcode: 97211, bio: 'I want to become better at Arabic', gender: 'male', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/sami_pic.jpg")))
User.create(email: 'nancy@gmail.com', first_name: 'Nancy', last_name: 'Portillo', city: 'Portland', state: 'OR', zipcode: 97204, bio: 'I am excited to help others', gender: 'female', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/nancy_pic.jpg")))
User.create(email: 'tamara@gmail.com', first_name: 'Tamara', last_name: 'Hammam', city: 'Hillsboro', state: 'OR', zipcode: 97123, bio: 'I enjoy meeting new people', gender: 'female', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/tamara_pic.jpg")))
User.create(email: 'coby@gmail.com', first_name: 'Coby', last_name: 'Vail', city: 'Tigard', state: 'OR', zipcode: 97223, bio: 'I am currently taking Farsi classes and am looking for a speaking partner', gender: 'male', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/coby_pic.jpg")))
User.create(email: 'arash@gmail.com', first_name: 'Arash', last_name: 'Marandi', city: 'Portland', state: 'OR', zipcode: 97216, bio: 'I am looking forward to meeting new people', gender: 'male', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/arash_pic.jpg")))
User.create(email: 'jessica@gmail.com', first_name: 'Jessica', last_name: 'Dildine', city: 'Portland', state: 'OR', zipcode: 97212, bio: 'I need someone to practice my Arabic with.', gender: 'female', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/jessica_pic.jpg")))
User.create(email: 'ellie@gmail.com', first_name: 'Ellie', last_name: 'Bay', city: 'Portland', state: 'OR', zipcode: 97209, bio: 'I am just starting to learn Spanish; I am looking for someone who is friendly and patient.', gender: 'female', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/bay_pic.jpg")))
User.create(email: 'khaled@gmail.com', first_name: 'Khaled', last_name: 'AbuAmsha', city: 'Portland', state: 'OR', zipcode: 97201, bio: 'I would love to practice my language skills', gender: 'male', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/khaled_pic.jpg")))

NativeLanguage.create(name: "Arabic")
NativeLanguage.create(name: "Burmese")
NativeLanguage.create(name: "Dzongkha")
NativeLanguage.create(name: "English")
NativeLanguage.create(name: "Farsi")
NativeLanguage.create(name: "French")
NativeLanguage.create(name: "Somali")
NativeLanguage.create(name: "Spanish")
NativeLanguage.create(name: "Other")

LearnLanguage.create(name: "Arabic")
LearnLanguage.create(name: "Burmese")
LearnLanguage.create(name: "Dzongkha")
LearnLanguage.create(name: "English")
LearnLanguage.create(name: "Farsi")
LearnLanguage.create(name: "French")
LearnLanguage.create(name: "Somali")
LearnLanguage.create(name: "Spanish")
LearnLanguage.create(name: "Other")
