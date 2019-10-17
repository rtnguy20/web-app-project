# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
10.times do |i|
Schooladmin.create(name: "#{Faker::Company.name} ", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip, boss: Faker::Name.name).save
end
#jobrec
10.times do |i|
  Jobrec.create(first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email_address: Faker::Internet.email).save
end
#Student
200.times do |i|
   Student.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,
   location_address: Faker::Address.street_address,
    location_city: Faker::Address.city,
    location_state: Faker::Address.state,
    location_zip: Faker::Address.zip,
    mobile_phone_number: Faker::PhoneNumber.phone_number).save
 
    
end
