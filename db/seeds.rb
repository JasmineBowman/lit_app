# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
200.times do
  user = User.new(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, address: Faker::Address.street_address, city: Faker::Address.city, zip: Faker::Address.zip, high_school: 'West High School', grade_level: 'Senior', age: '18', email: Faker::Internet.email, phone: Faker:: PhoneNumber.cell_phone)

  user.save
end

require 'faker'
200.times do
  option = Option.new(title: Faker::Company.profession, description: Faker::Company.industry, industry: Faker::IndustrySegments.super_sector, email: Faker::Internet.email, phone: Faker:: PhoneNumber.cell_phone)

  option.save
end


