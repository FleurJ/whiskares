# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create!([{ email: "fleur.jasoigne@gmail.com", password: "123456" }, { email: "fleur.jasoigne+1@gmail.com", password: "123456" }, { email: "fleur.jasoigne+2@gmail.com", password: "123456" }])
Animal.create!(name: "bob", species: "Rabbit", dangerosity: 2, needs: "love", user: users.sample)
