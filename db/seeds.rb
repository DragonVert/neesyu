# This file should contain all the record creation needed to seed the database with its default values.
#
# Effacer toute la base en environnement de develoment

toto = 0

if Rails.env == "development"
  Event.destroy_all
  puts "env development : Table events raz"
end

# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30))).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }], debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
#   Character.create(name: 'Luke', movie: movies.first, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))

# Définir la fonction de remplissage
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
        evt.reduit = $reduit
        evt.save
    end
end

# Parametrer la salle
def salle_micadanse_may_b
    $lieu = "Micadanse salle May B"
    $adresse = "15 rue Geoffroy l'Asnier"
    $cp = "75004"
    $ville = "Paris"
    $pays = "France"
    $duree = 2.hour
end

def salle_la_guillontine
    $lieu = "La Guillotine"
    $adresse ="24 rue Robespierre"
    $cp = "93100"
    $ville ="Montreuil"
    $pays = "France"
end

def salle_regard_du_cygne
    $lieu = "Au regard du Cygne"
    $adresse = "210 rue de Belleville"
    $cp = "75020"
    $ville = "Paris"
    $pays = "France"
end

def remplir_les_tables

    toto = 2
    #------------------------------------------------------------------------------
    #               Création des cours de Peter regulier
    #------------------------------------------------------------------------------

    $titre = "Cours de 5 rythmes avec Peter W."
    $description = "Cours de 5 rythmes, Corps, souffle, mouvement : La danse de l'Etre"
    $jour = DateTime.new(2016,10,5,20,00,00)
    $liste =[]
    $prix = 20
    $duree = 2.hour
    $reduit = "20 € / 17 € / 14 €"

    # Liste des jours ou il n'y a pas cours
    $liste_enlever = [DateTime.new(2016,12,28,20,00,00)]

    # Ce qui fait du 2016/10/05 au 2017/06/21
    38.times do
      $liste = $liste << $jour
      $jour =  $jour.next_week(:wednesday).change(hour: 20)
    end

    # Enlever les dates
    $liste = $liste - $liste_enlever

    salle_la_guillontine
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des cours de Peter ponctuel
    #------------------------------------------------------------------------------

    $titre = "Cours de 5 rythmes avec Peter W. "
    $description = "Atelier ponctuel"
    $prix = 20
    $reduit = "20 € / 17 € / 14 €"
    $liste = [DateTime.new(2016,9,13,20,00)]

    salle_micadanse_may_b
    creer_la_liste


    #------------------------------------------------------------------------------
    #               Création des stages de Peter d'une journée
    #------------------------------------------------------------------------------

    $titre = "Stage de 5 rythmes avec Peter W. "
    $description = "Stage d'une journée"
    $prix = 65
    $reduit = "Tarif: 65€ une journée - 170€ trois journées - 360€ les 7"
    $duree = 5.hour + 30.minute
    $liste = [DateTime.new(2016,10,2,12,00),
              DateTime.new(2016,11,6,12,00),
              DateTime.new(2016,12,4,12,00),
              DateTime.new(2017,2,5,12,00),
              DateTime.new(2017,3,5,12,00),
              DateTime.new(2017,4,9,12,00),
              DateTime.new(2017,5,7,12,00)
    ]

    salle_micadanse_may_b
    creer_la_liste


    #------------------------------------------------------------------------------
    #               Création des cours de Marc Micadanse
    #------------------------------------------------------------------------------

    $titre = "Cours de 5 rythmes avec Marc S. "
    $description = "Cours avec Peter dans Paris"
    $prix = 20
    $duree = 2.hour
    $liste = [DateTime.new(2016,9,16,19,30),
              DateTime.new(2016,10,7,19,30),
              DateTime.new(2016,10,21,19,30),
              DateTime.new(2016,11,4,19,30),
              DateTime.new(2016,11,18,19,30),
              DateTime.new(2016,12,2,19,30),
            ]
    salle_micadanse_may_b
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des cours de Marc Sweat your prayer Regard du Cygne
    #------------------------------------------------------------------------------

    $titre = "Sweat your prayer avec Marc "
    $description = "Sweat your prayer avec Marc "
    $prix = 20
    $duree = 2.hour
    $liste = [DateTime.new(2016,9,11,19,30)]

    salle_regard_du_cygne
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des stages de Marc Regard du Cygne
    #------------------------------------------------------------------------------

    $titre = "Stage de 5 rythmes avec Marc "
    $description = "Stage d'une journée"
    $prix = 20
    $duree = 6.hour + 30.minute
    $liste = [DateTime.new(2016,9,4,12,00),
              DateTime.new(2016,11,11,12,00),
              DateTime.new(2016,11,12,12,00),
              DateTime.new(2016,9,4,12,00),
              DateTime.new(2016,9,4,12,00),
              DateTime.new(2016,9,4,12,00),
            ]

    salle_regard_du_cygne
    creer_la_liste

    toto = toto + 0
    puts toto
end


remplir_les_tables
