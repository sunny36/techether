299.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@techether.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               subject_id: rand(1..51))
end