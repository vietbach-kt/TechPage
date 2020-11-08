# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
30.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "password"
  birth = "2000-11-#{n+1}"
  gender = "men"
  User.create!(
  name: name,
  email: email,
  password: password, 
  password_confirmation: password,
  birth: birth,
  gender: gender
)
end 
30.times do |n|
  name = Faker::Name.name
  email = "test#{n+1}@gmai.com"
  password = "password"
  birth = "1999-12-#{n+1}"
  gender = "women"
  User.create!(
  name: name,
  email: email,
  password: password, 
  password_confirmation: password,
  birth: birth,
  gender: gender
)
end 