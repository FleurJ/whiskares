# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create!([{ email: "fleur.jasoigne@gmail.com", password: "123456" }, { email: "fleur.jasoigne+1@gmail.com", password: "123456" }, { email: "fleur.jasoigne+2@gmail.com", password: "123456" }])
Animal.create!(name: "bob", species: "Rabbit", dangerosity: 2, needs: "love", user: users.sample)

Mission.create(city: "brussels", user_id: 1, fee: 15, start_date: "02.03.2020", end_date: "07.03.2020", animal_id: 2)
Mission.create(city: "liege", user_id: 2, fee: 20, start_date: "03.04.2020", end_date: "10.05.2020", animal_id: 1)
Mission.create(city: "charleroi", user_id: 3, fee: 0, start_date: "01.6.2020", end_date: "01.06.2020", animal_id: 3)
