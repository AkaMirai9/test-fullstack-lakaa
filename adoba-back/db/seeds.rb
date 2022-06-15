# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Collecte.destroy_all
Attribut.destroy_all

collecte1 = Collecte.create(date: "10-12-2021", assos: "Restos du monde")
collecte2 = Collecte.create(date: "09-11-2021", assos: "Action pour eux")
collecte3 = Collecte.create(date: "02-01-2021", assos: "Restos du monde")
collecte4 = Collecte.create(date: "09-11-2020", assos: "Les Joyeux Lurons")

poid1 = Attribut.create(name: "Poids", desc: "Le poids de la collecte", datas: "27kg", collecteid: collecte1.id)
poid2 = Attribut.create(name: "Poids", desc: "Le poids de la collecte", datas: "15kg", collecteid: collecte2.id)
poid3 = Attribut.create(name: "Poids", desc: "Le poids de la collecte", datas: "8kg", collecteid: collecte3.id)
poid4 = Attribut.create(name: "poids", desc: "Le poids de la collecte", datas: "102kg", collecteid: collecte4.id)

lieu1 = Attribut.create(name: "Lieu", desc: "Le lieu de la collecte", datas: "26 avenue de la tour", collecteid: collecte1.id)

participants1 = Attribut.create(name: "Participants", desc: "Le nombres de participants à la collecte", datas: "3 membres de l'entreprise et 2 bénévoles", collecteid: collecte1.id)
