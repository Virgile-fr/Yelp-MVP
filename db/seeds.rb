# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone = Faker::PhoneNumber.cell_phone_in_e164
  category = %w[chinese italian japanese french belgian].sample
  r = Restaurant.new(name:name, address:address, phone_number:phone, category:category)
  r.save
end
