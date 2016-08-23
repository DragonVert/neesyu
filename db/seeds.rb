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
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }], debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))
#   Character.create(name: 'Luke', movie: movies.first, debut: DateTime.new(2016,rand(1..12),rand(1..30)), fin: DateTime.new(2016,rand(1..12),rand(1..30)))

# Définir la fonction de remplissage
def creer_la_liste
    # Creer la liste
    @liste.each do |debut|
        evt = Event.new
        evt.titre = @titre
        evt.description = @description
        evt.debut = debut
        evt.fin = debut + @duree
        evt.prix = @prix
        evt.lieu = @lieu
        evt.adresse = @adresse
        evt.cp = @cp
        evt.ville = @ville
        evt.pays = @pays
        evt.reduit = @reduit
        evt.facilitateur = @facilitateur
        evt.save
    end
end

# Parametrer la salle
def salle_micadanse_may_b
    @lieu = "Micadanse/May B"
    @adresse = "15 rue Geoffroy l'Asnier"
    @cp = "75004"
    @ville = "Paris 4e"
    @pays = "France"
end

def salle_micadanse_noces
    @lieu = "Micadanse/Noces"
    @adresse = "20 rue Geoffroy l'Asnier"
    @cp = "75004"
    @ville = "Paris 4e"
    @pays = "France"
end

def salle_la_guillontine
    @lieu = "La Guillotine"
    @adresse ="24 rue Robespierre"
    @cp = "93100"
    @ville ="Montreuil"
    @pays = "France"
end

def salle_regard_du_cygne
    @lieu = "Au regard du Cygne"
    @adresse = "210 rue de Belleville"
    @cp = "75020"
    @ville = "Paris 20e"
    @pays = "France"
end


def salle_one_step
    @lieu = "One step"
    @adresse = "18-20 rue du Faubourg du Temple"
    @cp = "75011"
    @ville = "Paris 11e"
    @pays = "France"
end

def salle_alter
    @lieu = "Salle Alter' Active"
    @adress = "20 chemin des prés"
    @cp = "77810"
    @ville= "Thomery"
    @pays = "France"
end

def remplir_les_tables

    # Tout créer ou pas RAZ
    if true


    #------------------------------------------------------------------------------
    #               Création des cours de Peter regulier
    #------------------------------------------------------------------------------

    @titre = "Cours de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes, Corps, souffle, mouvement : La danse de l'Etre"
    @prix = 20
    @duree = 2.hour
    @reduit = "20 € / 17 € / 14 €"
    @facilitateur = "Peter Wilberforce"

    @jour = DateTime.new(2016,10,5,20,00,00)
    @liste =[]

    # Liste des jours ou il n'y a pas cours
    @liste_enlever = [DateTime.new(2016,12,28,20,00,00)]

    # Ce qui fait du 2016/10/05 au 2017/06/21
    38.times do
      @liste = @liste << @jour
      @jour =  @jour.next_week(:wednesday).change(hour: 20)
    end

    # Enlever les dates
    @liste = @liste - @liste_enlever

    salle_la_guillontine
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des cours de Peter ponctuel
    #------------------------------------------------------------------------------

    @titre = "Cours de danse des 5 rythmes"
    @description = "Atelier ponctuel"
    @prix = 20
    @duree = 2.hour
    @reduit = "20 € / 17 € / 14 €"
    @facilitateur = "Peter Wilberforce"


    @liste = [DateTime.new(2016,9,13,20,00)]

    salle_micadanse_may_b
    creer_la_liste


    #------------------------------------------------------------------------------
    #               Création des stages de Peter d'une journée
    #------------------------------------------------------------------------------

    @titre = "Atelier de danse des 5 rythmes"
    @description = "Stage d'une journée"
    @prix = 65
    @reduit = "Tarif: 65€ une journée - 170€ trois journées - 360€ les 7"
    @duree = 5.hour + 30.minute
    @facilitateur = "Peter Wilberforce"

    @liste = [DateTime.new(2016,10,2,12,00),
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

    @titre = "Cours de danse des 5 rythmes"
    @description = "Cours avec Marc dans Paris"
    @prix = 20
    @duree = 2.hour
    @reduit = "A voir suivant demande"
    @facilitateur = "Marc Silvestre"

    @liste = [DateTime.new(2016,9,16,19,30),
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

    @titre = "Sweat your prayer"
    @description = "Sweat your prayer avec Marc "
    @prix = 20
    @duree = 2.hour
    @reduit = ""
    @facilitateur = "Marc Silvestre"

    @liste = [DateTime.new(2016,9,11,19,30)]

    salle_regard_du_cygne
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des stages de Marc Regard du Cygne
    #------------------------------------------------------------------------------

    @titre = "Atelier de danse des 5 rythmes"
    @description = "Stage d'une journée"
    @prix = 75
    @duree = 6.hour + 30.minute
    @reduit = "65"
    @facilitateur = "Marc Silvestre"


    @liste = [DateTime.new(2016,9,4,12,00),
              DateTime.new(2016,11,13,12,00),
              DateTime.new(2016,12,11,12,00),
              DateTime.new(2017,2,5,12,00),
              DateTime.new(2017,4,23,12,00)
            ]

    salle_regard_du_cygne
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des cours de Amélie
    #------------------------------------------------------------------------------

    @titre = "Cours de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes"
    @prix = 18
    @reduit = "18€ & 15€ étudiants, solidaire. 150€ carte 10 cours (valable dimanches et mardis)."
    @duree = 2.hour
    @facilitateur = "Amélie Schweiger"

    @liste = [DateTime.new(2016,9,18,11,00),
              DateTime.new(2016,9,25,11,00),
              DateTime.new(2016,10,2,11,00),
              DateTime.new(2016,10,16,11,00),
              DateTime.new(2016,10,23,11,00),
              DateTime.new(2016,10,30,11,00),
              DateTime.new(2016,11,13,11,00),
              DateTime.new(2016,11,27,11,00),
              DateTime.new(2016,12,4,11,00),
              DateTime.new(2016,12,18,11,00),
              DateTime.new(2017,1,8,11,00),
              DateTime.new(2017,1,29,11,00),
              DateTime.new(2017,2,12,11,00),
              DateTime.new(2017,2,19,11,00),
              DateTime.new(2017,2,26,11,00),
              DateTime.new(2017,3,19,11,00),
              DateTime.new(2017,3,26,11,00),
              DateTime.new(2017,4,9,11,00),
              DateTime.new(2017,4,23,11,00),
              DateTime.new(2017,4,30,11,00),
              DateTime.new(2017,5,4,11,00),
              DateTime.new(2017,5,28,11,00),
              DateTime.new(2017,6,11,11,00),
              DateTime.new(2017,6,18,11,00),
              DateTime.new(2017,7,2,11,00),
              DateTime.new(2016,9,11,15,00),
              DateTime.new(2017,1,15,15,00),
              DateTime.new(2017,3,12,15,00),
              DateTime.new(2017,5,7,15,00)
    ]

    salle_one_step
    creer_la_liste

    # Tout créer ou pas
    end


    #------------------------------------------------------------------------------
    #               Création des cours de sweat avec Amélie
    #------------------------------------------------------------------------------

    @titre = "Sweat : La Double Vague avec Amélie  "
    @description = "Cours de danse des 5 rythmes"
    @prix = 18
    @reduit =  "18€ & 15€ étudiants, solidaire. 150€ carte 10 cours (valable dimanches et mardis)."
    @duree = 2.hour
    @facilitateur = "Amélie Schweiger"

    @liste = [DateTime.new(2016,9,20,19,30),
              DateTime.new(2016,10,18,19,30),
              DateTime.new(2016,11,22,19,30),
              DateTime.new(2016,12,13,19,30)
    ]

    salle_micadanse_may_b
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des stage d'une journée avec Amélie
    #------------------------------------------------------------------------------

    @titre = "Lab impro au fil des 5 rythmes"
    @description = "Cours de danse des 5 rythmes"
    @prix = 75
    @reduit = "60€ étudiants et  solidaire. 300€ le cycle complet."
    @duree = 5.hour
    @facilitateur = "Amélie Schweiger"

    @liste = [DateTime.new(2016,10,1,14,30),
              DateTime.new(2016,12,17,14,30),
              DateTime.new(2017,2,18,14,30),
              DateTime.new(2017,3,25,14,30),
              DateTime.new(2017,4,22,14,30)
    ]

    salle_one_step
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des cours de Lise
    #------------------------------------------------------------------------------

    @titre = "Cours de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes avec Lise"
    @prix = 20
    @duree = 2.hour
    @reduit = "Cartes d'abonnement au trimestre et à l'année dès septembre"
    @facilitateur = "Lise Merlin"

    @jour = DateTime.new(2016,9,7,19,30)
    @liste =[]

    # Liste des jours ou il n'y a pas cours
    @liste_enlever = []

    # Ce qui fait tous les mercredis de septembre à juin
    43.times do
      @liste = @liste << @jour
      @jour =  @jour.next_week(:wednesday).change(hour: 19).change(minute: 30)
    end

    # Enlever les dates
    @liste = @liste - @liste_enlever

    salle_one_step
    creer_la_liste



    #------------------------------------------------------------------------------
    #               Création des cours d'Omar
    #------------------------------------------------------------------------------

    @titre = "Stage de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes"
    @prix = 20
    @reduit = "Oui, à demander sur place "
    @duree = 2.hour
    @facilitateur = "Omar Omzeray"

    @liste = [DateTime.new(2016,9,2,19,30)]


    salle_micadanse_may_b
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des cours de Véronique May B
    #------------------------------------------------------------------------------

    @titre = "Stage de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes"
    @prix = 20
    @reduit =
    @duree = 2.hour + 30.minute
    @facilitateur = "Véronique Champalou"

    @liste = [DateTime.new(2016,9,6,19,30),
              DateTime.new(2016,10,11,19,30),
              DateTime.new(2016,11,1,19,30),
              DateTime.new(2016,12,6,19,30),
              DateTime.new(2016,12,20,19,30)
    ]

    salle_micadanse_may_b
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des cours de Véronique Noces
    #------------------------------------------------------------------------------

    @titre = "Stage de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes"
    @prix = 20
    @reduit =
    @duree = 2.hour
    @facilitateur = "Véronique Champalou"


    @liste = [DateTime.new(2016,9,20,16,00),
              DateTime.new(2016,11,3,15,00)
    ]

    salle_micadanse_noces
    creer_la_liste

    @duree = 2.hour + 30.minute

    @liste = [DateTime.new(2016,11,23,19,30)]

    salle_micadanse_noces
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des cours de Garance
    #------------------------------------------------------------------------------

    @titre = "Atelier de Open floor"
    @description = "Pas de description"
    @prix = 20
    @reduit = "15 (étudiants, RSA...)"
    @duree = 2.hour
    @facilitateur = "Garance Monzies"

    @liste = [DateTime.new(2016,9,25,11,00),
              DateTime.new(2016,10,23,11,00),
              DateTime.new(2016,11,27,11,00),
              DateTime.new(2016,12,18,11,00)
    ]

    salle_alter
    creer_la_liste

    # # ------------------------------------------------------------------------------
    # #               Création des cours de ???
    # # ------------------------------------------------------------------------------

    # @titre = "Stage de danse des 5 rythmes avec  "
    # @description = "Cours de danse des 5 rythmes"
    # @prix =
    # @reduit =
    # @duree =

    # @liste = [DateTime.new(2016,,,,),
    #           DateTime.new(2016,,,,),
    #           DateTime.new(2016,,,,),
    #           DateTime.new(2016,,,,)
    # ]

    # salle_micadanse_may_b
    # creer_la_liste

end

remplir_les_tables
