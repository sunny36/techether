Fabricator(:user) do
  ratings(count: 5)
  name{ Faker::Name.name }
  email{ Faker::Internet.email }
  password{ Faker::Internet.password }
end
