# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.create!(username:  "admin",
  email: "breilsass@gmail.com",
  password:              "admins",
  password_confirmation: "admins",
  admin:     true,
  activated: true,
  activated_at: Time.zone.now)

  50.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@elsass.bzh"
    password = "password"
    User.create!(username:  name,
                 email: email,
                 password:              password,
                 password_confirmation: password,
                 admin: false,
                 activated: true,
                 activated_at: Time.zone.now)
  end
