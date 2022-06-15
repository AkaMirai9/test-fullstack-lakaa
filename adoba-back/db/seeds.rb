# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Collecte.destroy_all
Attribut.destroy_all

collecte1 = Collecte.create(date: "10-12-2020", assos: "Restos dju monde")
collecte2 = Collecte.create(date: "09-11-2020", assos: "Action pour eux")

poid1 = Attribut.create(name: "poids", desc: "poids de la collecte", datas: "36kg", collecteid: collecte1.id)
poid2 = Attribut.create(name: "poids", desc: "poids de la collecte", datas: "36kg", collecteid: collecte1.id)
poid3 = Attribut.create(name: "poids", desc: "poids de la collecte", datas: "36kg", collecteid: collecte1.id)
poid4 = Attribut.create(name: "poids", desc: "poids de la collecte", datas: "36kg", collecteid: collecte1.id)
