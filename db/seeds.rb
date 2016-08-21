# This file should contain all the record creation needed to seed the database with its default values.
#
# Effacer toute la base en environnement de develoment

if Rails.env == "development"
  Event.destroy_all
  puts "env development : Table events raz"
end

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

# Définir la fonction de remplissage
def remplir_les_tables
    def creer_la_liste
        # Creer la liste
        $liste.each do |debut|
            evt = Event.new
            evt.titre = $titre
            evt.description = $description
            evt.debut = debut
            evt.fin = debut + $duree
            evt.prix = $prix
            evt.lieu = $lieu
            evt.adresse = $adresse
            evt.cp = $cp
            evt.ville = $ville
            evt.pays = $pays
            evt.save
        end
    end


    #------------------------------------------------------------------------------
    #               Création des cours de Peter regulier
    #------------------------------------------------------------------------------

    $titre = "Cours de 5 rythmes avec Peter W."
    $description = "Cours avec Peter dans une belle salle à Montreuil"
    $jour = DateTime.new(2016,10,5,20,00,00)
    $liste =[]
    $prix = 20
    $lieu = "La Guillotine"
    $adresse ="24 rue Robespierre"
    $cp = "93100"
    $ville ="Montreuil"
    $pays = "France"
    $duree = 2.hour

    # Liste des jours ou il n'y a pas cours
    $liste_enlever = [DateTime.new(2016,12,28,20,00,00)]

    # Ce qui fait du 2016/10/05 au 2017/06/21
    38.times do
      $liste = $liste << $jour
      $jour =  $jour.next_week(:wednesday).change(hour: 20)
    end

    # Enlever les dates
    $liste = $liste - $liste_enlever

    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des cours de Peter ponctuel
    #------------------------------------------------------------------------------

    $titre = "Cours de 5 rythmes avec Peter W. "
    $description = "Cours avec Peter dans Paris"
    $prix = 20
    $lieu = "Micadanse salle May B"
    $adresse = "15 rue Geoffroy l'Asnier"
    $cp = "75004"
    $ville = "Paris"
    $pays = "France"
    $duree = 2.hour
    $liste = [DateTime.new(2016,9,13,19,30)]

    creer_la_liste


    #------------------------------------------------------------------------------
    #               Création des cours de Marc ponctuel
    #------------------------------------------------------------------------------

    $titre = "Cours de 5 rythmes avec Marc S. "
    $description = "Cours avec Peter dans Paris"
    $prix = 20
    $lieu = "Micadanse salle May B"
    $adresse = "15 rue Geoffroy l'Asnier"
    $cp = "75004"
    $ville = "Paris"
    $pays = "France"
    $duree = 2.hour
    $liste = [DateTime.new(2016,9,16,19,30),
              DateTime.new(2016,10,7,19,30),
              DateTime.new(2016,10,21,19,30),
              DateTime.new(2016,11,4,19,30),
              DateTime.new(2016,11,18,19,30),
              DateTime.new(2016,12,2,19,30),
            ]

    creer_la_liste
    #------------------------------------------------------------------------------
    #               Création des cours de Marc
    #------------------------------------------------------------------------------

    $titre = "Sweat your prayer avec Marc "
    $description = "Sweat your prayer avec Marc "
    $prix = 20
    $lieu = "Au regard du Cygne"
    $adresse = "210 rue de Bellevile"
    $cp = "75020"
    $ville = "Paris"
    $pays = "France"
    $duree = 2.hour
    $liste = [DateTime.new(2016,9,11,19,30)]

    creer_la_liste

end

remplir_les_tables
