# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
Thing.destroy_all
Cat.destroy_all
User.destroy_all
  
Thing.create(name: Faker::Company.name)
Thing.create(name: Faker::Company.name)

Cat.create(name: Faker::Creature::Cat.name)
Cat.create(name: Faker::Creature::Cat.name)
Cat.create(name: Faker::Creature::Cat.name)

User.create(email: "test@test.com", password: "123456")
