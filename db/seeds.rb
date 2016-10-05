brett = User.create(email: 'brett@gmail.com', first_name: 'Brett', last_name: 'New', city: 'Portland', state: 'OR', zipcode: 97205, bio: 'I love to learn', gender: 'female', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/brett_pic.jpg")))
sami = User.create(email: 'sami@gmail.com', first_name: 'Sami', last_name: 'Al-Jamal', city: 'Portland', state: 'OR', zipcode: 97211, bio: 'I want to become better at Arabic', gender: 'male', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/sami_pic.jpg")))
nancy = User.create(email: 'nancy@gmail.com', first_name: 'Nancy', last_name: 'Portillo', city: 'Portland', state: 'OR', zipcode: 97204, bio: 'I am excited to help others', gender: 'female', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/nancy_pic.jpg")))
tamara = User.create(email: 'tamara@gmail.com', first_name: 'Tamara', last_name: 'Hammam', city: 'Hillsboro', state: 'OR', zipcode: 97123, bio: 'I enjoy meeting new people', gender: 'female', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/tamara_pic.jpg")))
coby = User.create(email: 'coby@gmail.com', first_name: 'Coby', last_name: 'Vail', city: 'Tigard', state: 'OR', zipcode: 97223, bio: 'I am currently taking Farsi classes and am looking for a speaking partner', gender: 'male', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/coby_pic.jpg")))
arash = User.create(email: 'arash@gmail.com', first_name: 'Arash', last_name: 'Marandi', city: 'Portland', state: 'OR', zipcode: 97216, bio: 'I am looking forward to meeting new people', gender: 'male', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/arash_pic.jpg")))
jessica = User.create(email: 'jessica@gmail.com', first_name: 'Jessica', last_name: 'Dildine', city: 'Portland', state: 'OR', zipcode: 97212, bio: 'I need someone to practice my Arabic with.', gender: 'female', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/jessica_pic.jpg")))
ellie = User.create(email: 'ellie@gmail.com', first_name: 'Ellie', last_name: 'Bay', city: 'Portland', state: 'OR', zipcode: 97209, bio: 'I am just starting to learn Spanish; I am looking for someone who is friendly and patient.', gender: 'female', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/bay_pic.jpg")))
khaled = User.create(email: 'khaled@gmail.com', first_name: 'Khaled', last_name: 'AbuAmsha', city: 'Portland', state: 'OR', zipcode: 97201, bio: 'I would love to practice my language skills', gender: 'male', password: 'password', password_confirmation: 'password', image: (File.new("#{Rails.root}/public/system/images/khaled_pic.jpg")))

native_arabic = NativeLanguage.create(name: "Arabic")
native_burmese = NativeLanguage.create(name: "Burmese")
native_chinese = NativeLanguage.create(name: "Chinese")
native_dzonghka = NativeLanguage.create(name: "Dzongkha")
native_english = NativeLanguage.create(name: "English")
native_farsi = NativeLanguage.create(name: "Farsi")
native_french = NativeLanguage.create(name: "French")
native_somali = NativeLanguage.create(name: "Somali")
native_spanish = NativeLanguage.create(name: "Spanish")
native_other = NativeLanguage.create(name: "Other")

learn_arabic = LearnLanguage.create(name: "Arabic")
learn_burmese = LearnLanguage.create(name: "Burmese")
learn_chinese = LearnLanguage.create(name: "Chinese")
learn_dzonghka = LearnLanguage.create(name: "Dzongkha")
learn_english = LearnLanguage.create(name: "English")
learn_farsi = LearnLanguage.create(name: "Farsi")
learn_french = LearnLanguage.create(name: "French")
learn_somali = LearnLanguage.create(name: "Somali")
learn_spanish = LearnLanguage.create(name: "Spanish")
learn_other = LearnLanguage.create(name: "Other")

native_arabic.users << tamara
native_arabic.users << khaled
native_chinese.users << ellie
native_english.users << brett
native_english.users << sami
native_english.users << coby
native_farsi.users << arash
native_french.users << jessica
native_spanish.users << nancy

tamara.learn_language_ids = tamara.learn_language_ids << learn_chinese.id
khaled.learn_language_ids = khaled.learn_language_ids << learn_english.id
ellie.learn_language_ids = ellie.learn_language_ids << learn_spanish.id
brett.learn_language_ids = brett.learn_language_ids << learn_farsi.id
sami.learn_language_ids = sami.learn_language_ids << learn_arabic.id
coby.learn_language_ids = coby.learn_language_ids << learn_dzonghka.id
arash.learn_language_ids = arash.learn_language_ids << learn_english.id
jessica.learn_language_ids = jessica.learn_language_ids << learn_arabic.id
nancy.learn_language_ids = nancy.learn_language_ids << learn_french.id
