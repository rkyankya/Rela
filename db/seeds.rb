# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Seller.destroy_all
Product.destroy_all
Buyer.destroy_all
User.destroy_all

p 'Database has been refreshed'

5.times do |n|
  name = "foo#{n + 1}bar"
  email = "foo#{n + 1}@bar.com"
  password = 'foobar'
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end

10.times do
  Buyer.create(name: Faker::FunnyName.name)
end

p 'Buyers Created'

5.times do
  Seller.create(name: Faker::FunnyName.name)
end

p 'Sellers Created'

40.times do
  Product.create(name: Faker::Device.model_name, buyer_id: Faker::Number.within(range: 1..10), seller_id: Faker::Number.within(range: 1..5))
end

p 'Products Created'

p 'Success all tables are filled'
