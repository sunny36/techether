Fabricator(:subject) do
  users(count: 5)
  name{ Faker::Company.name }
  description{ Faker::Company.catch_phrase }
  category{ Faker::Company.suffix }
  tags{ Faker::Company.buzzword }
end
