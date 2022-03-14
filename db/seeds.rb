# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Pokemon.destroy_all

pierre = User.new(email: "pierre@pokemon.com", first_name: "Pierre", last_name: "Roche", region: "Kanto", password: "123456")
pierre.photo.attach(io: File.open('app/assets/images/pierre.jpg'), filename: 'pierre.jpg')
pierre.save

ondine = User.new(email: "ondine@pokemon.com", first_name: "Ondine", last_name: "Eau", region: "Kanto", password: "123456")
ondine.photo.attach(io: File.open('app/assets/images/ondine.jpg'), filename: 'ondine.jpg')
ondine.save

aaron = User.new(email: "aaron@pokemon.com", first_name: "Aaron", last_name: "Insecte", region: "Sinnoh", password: "123456")
aaron.photo.attach(io: File.open('app/assets/images/Aaron.png'), filename: 'Aaron.png')
aaron.save

alizé = User.new(email: "alizé@pokemon.com", first_name: "Alizé", last_name: "Vol", region: "Hoenne", password: "123456")
alizé.photo.attach(io: File.open('app/assets/images/Alizé.png'), filename: 'Alizé.png')
alizé.save

flora = User.new(email: "flora@pokemon.com", first_name: "Flora", last_name: "Hoenne", region: "Hoenne", password: "123456")
flora.photo.attach(io: File.open('app/assets/images/Flora.jpg'), filename: 'Flora.jpg')
flora.save

cynthia = User.new(email: "cynthia@pokemon.com", first_name: "Cynthia", last_name: "Ligue", region: "Sinnoh", password: "123456")
cynthia.photo.attach(io: File.open('app/assets/images/Cynthia.jpg'), filename: 'Cynthia.jpg')
cynthia.save

jasmine = User.new(email: "jasmine@pokemon.com", first_name: "Jasmine", last_name: "Acier", region: "Johto", password: "123456")
jasmine.photo.attach(io: File.open('app/assets/images/Jasmine.jpg'), filename: 'Jasmine.jpg')
jasmine.save

norman = User.new(email: "norman@pokemon.com", first_name: "Norman", last_name: "Normal", region: "Hoenne", password: "123456")
norman.photo.attach(io: File.open('app/assets/images/Norman.png'), filename: 'Norman.png')
norman.save

onix = Pokemon.new(name: "Onix", nature: "Brave", power: "Roche", level: "50", description: "Un incroyable pokémon, très puissant, qui adore les calins!")
onix.photo.attach(io: File.open('app/assets/images/Onix.png'), filename: '0nix.png')
onix.user = pierre
onix.save

stari = Pokemon.new(name: "Stari", nature: "Timide", power: "Eau", level: "20", description: "Le plus mignon des staris au monde! Vous l'adorerez!")
stari.photo.attach(io: File.open('app/assets/images/Stari.png'), filename: 'Stari.png')
stari.user = ondine
stari.save

altaria = Pokemon.new(name: "Altaria", nature: "Jovial", power: "Vol", level: "50", description: "Un incroyable pokémon, très puissant, qui adore les calins!")
altaria.photo.attach(io: File.open('app/assets/images/Altaria.png'), filename: 'Altaria.png')
altaria.user = alizé
altaria.save

carchacrok = Pokemon.new(name: "Carchacrok", nature: "Foufou", power: "Dragon", level: "50", description: "Un incroyable pokémon, très puissant, qui adore les calins!")
carchacrok.photo.attach(io: File.open('app/assets/images/Carchacrok.png'), filename: 'Carchacrok.png')
carchacrok.user = cynthia
carchacrok.save

charmillon = Pokemon.new(name: "Charmillon", nature: "Discret", power: "Insecte", level: "20", description: "Un incroyable pokémon, très puissant, qui adore les calins!")
charmillon.photo.attach(io: File.open('app/assets/images/Charmillon.png'), filename: 'Charmillon.png')
charmillon.user = flora
charmillon.save

galifeu = Pokemon.new(name: "Galifeu", nature: "Malin", power: "Feu", level: "30", description: "Un incroyable pokémon, très puissant, qui adore les calins!")
galifeu.photo.attach(io: File.open('app/assets/images/Galifeu.png'), filename: 'Galifeu.png')
galifeu.user = flora
galifeu.save

drascore = Pokemon.new(name: "Drascore", nature: "Sérieux", power: "Insecte", level: "50", description: "Un incroyable pokémon, très puissant, qui adore les calins!")
drascore.photo.attach(io: File.open('app/assets/images/Drascore.png'), filename: 'Drascore.png')
drascore.user = aaron
drascore.save

lucario = Pokemon.new(name: "Lucario", nature: "Solo", power: "Combat", level: "50", description: "Un incroyable pokémon, très puissant, qui adore les calins!")
lucario.photo.attach(io: File.open('app/assets/images/Lucario.png'), filename: 'Lucario.png')
lucario.user = cynthia
lucario.save

magnéti = Pokemon.new(name: "Magnéti", nature: "Pressé", power: "Électrique", level: "50", description: "Un incroyable pokémon, très puissant, qui adore les calins!")
magnéti.photo.attach(io: File.open('app/assets/images/Magnéti.png'), filename: 'Magnéti.png')
magnéti.user = jasmine
magnéti.save

monaflemit = Pokemon.new(name: "Monaflemit", nature: "Relax", power: "Normal", level: "50", description: "Un incroyable pokémon, très puissant, qui adore les calins!")
monaflemit.photo.attach(io: File.open('app/assets/images/Monaflemit.png'), filename: 'Monaflemitpng')
monaflemit.user = norman
monaflemit.save

stelix = Pokemon.new(name: "Stelix", nature: "Gentil", power: "Acier", level: "50", description: "Un incroyable pokémon, très puissant, qui adore les calins!")
stelix.photo.attach(io: File.open('app/assets/images/Stelix.png'), filename: 'Stelix.png')
stelix.user = jasmine
stelix.save

puts "Finished!"