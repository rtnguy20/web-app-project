# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
#jobrec
10.times do |i|
  Jobrec.create(first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email_address: Faker::Internet.email, associate_company: Faker::Company.name, role: "Recruiter",
  phone: "888-888-8888", linkedin_url: Faker::Internet.url, available: Faker::Date.in_date_period, picture_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMNPszBzrblPa1wEIpULUqm9W2tDJpDL6lcz5cr6yZSpBjiVhTw&s").save
end
#Student
200.times do |i|
   Student.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,
   location_address: Faker::Address.street_address,
    location_city: Faker::Address.city,
    location_state: Faker::Address.state,
    location_zip: Faker::Address.zip,
    mobile_phone_number: Faker::PhoneNumber.phone_number, linkedin_url: Faker::Internet.url, twitter_url: Faker::Internet.url, github_url: Faker::Internet.url,
    resume1: "resume1", resume2: "resume2", skills: "These are my skills", interests: "these are my interests", category: "IT and Information Systems", review: "my reviews go here",
    rating: " ", picture_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMNPszBzrblPa1wEIpULUqm9W2tDJpDL6lcz5cr6yZSpBjiVhTw&s").save
end
#Company-listings
10.times do |i|
    CompanyListing.create(name: Faker::Company.name, description: Faker::Company.bs, website: Faker::Internet.url, company_image_url: Faker::Company.logo).save
end
