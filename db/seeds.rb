# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.new(mail: "fleur.jasoigne@gmail.com", encrypted_password: "123456")
User.new(mail: "fleur.jasoigne+1@gmail.com", encrypted_password: "123456")
User.new(mail: "fleur.jasoigne+2@gmail.com", encrypted_password: "123456")

Animal.new(name: "Merlin", species: "Wombat", dangerosity: "0", needs: "love")
Animal.new(name: "Crumble", species: "persian cat", dangerosity: "0", needs: "frolics and hugs")
Animal.new(name: "Charlie", species: "Unicorn", dangerosity: "2", needs: "pink water")
