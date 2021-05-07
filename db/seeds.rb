User.create!(
  name: "Example User",
  email: "thao@gmail.com",
  password: "password",
  password_confirmation: "password",
  admin: true
)
100.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "password"
  User.create!(name: name,
  email: email,
  password: password,
  password_confirmation: password)
end
