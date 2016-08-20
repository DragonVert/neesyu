# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30))).
#
# Examples:
#
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }], debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# #   Character.create(name: 'Luke', movie: movies.first, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Cours de Yoga", description: "Yoga traditionnel", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Cours Peter", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Cours Amélie", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Cours Lucie", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Cours Marc", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Cours Lise", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Pic nique du bien-etre", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Visite musée", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Yoga Hatha", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Méditation pleine conscience", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Recherche de pokémon", description: "très long texte", prix: 0, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Nuit des étoiles", description: "très long texte", prix: 0, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Cours de massage du dos", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "A la recherche de Charlie", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Cinéma à Nation", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Loup-garou entre médimums", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Pourquoi al Vie?", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Conférence communication non-violente", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
# Event.create(titre: "Présentation de", description: "très long texte", prix: 15, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))

# Création des cours de Peter
peter_titre = "Cours de 5 rythmes avec Peter"
peter_description = "Cours avec Peter dans une belle salle à Montreuil"
peter_jour = DateTime.new(2016,10,5,20,00,00)
38.times do
  Event.create(titre: peter_titre, description: peter_description, prix: 20, debut: peter_jour, fin: peter_jour)
  peter_jour =  peter_jour.next_week(:wednesday)
end
