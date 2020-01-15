# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([{ email: "fleur.jasoigne@gmail.com", encrypted_password: "123456" }, { email: "fleur.jasoigne+1@gmail.com", encrypted_password: "123456" }, { email: "fleur.jasoigne+2@gmail.com", encrypted_password: "123456" }])

Animal.create(name: "Merlin", species: "Wombat", dangerosity: "0", needs: "love")
Animal.create(name: "Crumble", species: "persian cat", dangerosity: "0", needs: "frolics and hugs")
Animal.create(name: "Charlie", species: "Unicorn", dangerosity: "2", needs: "pink water")
