# This file should contain all the record creation needed to seed the database with its default values.
#
# Effacer toute la base en environnement de develoment

if Rails.env == "development"
  Event.destroy_all
  Profil.destroy_all
  User.destroy_all
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
        evt.user_id = @user.id
        evt.transport = @transport
        if evt.save
            puts   "Evt cree titre #{evt.transport} date #{evt.debut} user #{evt.user.profil.pseudo}"
        else
            puts   "Evt pb !!! cree titre #{evt.transport} date #{evt.debut} user #{evt.user.profil.pseudo}"
        end
    end
end

# -----------------------------------------------------------------------------
#   Creer les profils
# -----------------------------------------------------------------------------

@user_peter = User.create!( email: "peter@neesyu.com", password: "password")
@user_marc = User.create!( email: "marc@neesyu.com", password: "password")
@user_amelie = User.create!( email: "amelie@neesyu.com", password: "password")
@user_lise = User.create!( email: "lise@neesyu.com", password: "password")
@user_omar = User.create!( email: "omar@neesyu.com", password: "password")
@user_carine = User.create!( email: "carine@neesyu.com", password: "password")
@user_veronique = User.create!( email: "veronique@neesyu.com", password: "password")
@user_garance = User.create!( email: "garance@neesyu.com", password: "password")

@profil_peter = Profil.create!(nom: "Wilberforce", prenom:"Peter", pseudo: "Peter W.",
                        activite: "Prof 5 rythmes", user: @user_peter,detail: "Non renseigné",
                        site: "http://www.bodyvoiceandbeing.com/body-voice-and-being")

@profil_marc = Profil.create!(nom: "Sylvestre", prenom: "Marc", pseudo: "Marc S.",
                        activite: "Prof 5 rythmes",user: @user_marc,detail: "Non renseigné",
                        site: "http://www.marcsilvestre.com/")

@profil_amelie = Profil.create!(nom: "Schweiger", prenom: "Amélie", pseudo:"Amélie S.",
                        activite: "Prof 5 rythmes",user:@user_amelie,detail: "Non renseigné",
                        site: "http://www.lesviesdansent.fr/")

@profil_lise = Profil.create!(nom: "Merlin", prenom: "Lise", pseudo:"Lise M.",
                        activite: "Prof 5 rythmes",user:@user_lise,detail: "Non renseigné",
                        site: "http://merlinlise.wixsite.com/dansenative/lise-merlin")

@profil_omar = Profil.create!(nom: "Omerzay", prenom:"Omar", pseudo: "Omar O.",
                        activite: "Prof 5 rythmes",user: @user_omar,detail: "Non renseigné",
                        site: "https://omar5rythmes.wordpress.com/")

@profil_carine = Profil.create!(nom: "Bourny", prenom: "Carine", pseudo: "Carine B.",
                        activite: "Prof 5 rythmes",user: @user_omar,detail: "Non renseigné",
                        site: "http://www.coeur-danse-presence.com/")

@profil_veronique = Profil.create!(nom: "Champalou", prenom: "Véronique", pseudo: "Véronique C.",
                        activite: "Prof Movement Medecine", user: @user_veronique,detail: "Non renseigné",
                        site: "http://www.inmotioneurope.com/In_Motion_Europe/Accueil.html")

@profil_garance = Profil.create!(nom: "Monzies", prenom: "Garance", pseudo: "Garance M.",
                        activite: "Prof Openfloor", user: @user_garance,detail: "Non renseigné",
                        site: "http://www.danseinspiree.com/")


# Parametrer la salle
def salle_micadanse_may_b
    @lieu = "Micadanse/May B"
    @adresse = "15 rue Geoffroy l'Asnier"
    @transport = "Metro Saint-Paul et Pont Marie"
    @cp = "75004"
    @ville = "Paris 4e"
    @pays = "France"
end

def salle_micadanse_noces
    @lieu = "Micadanse/Noces"
    @adresse = "20 rue Geoffroy l'Asnier"
    @transport = "Metro Saint-Paul et Pont Marie"
    @cp = "75004"
    @ville = "Paris 4e"
    @pays = "France"
end

def salle_la_guillontine
    @lieu = "La Guillotine"
    @adresse ="24 rue Robespierre"
    @transport = "Robespierre - ligne 9 (à 7 min de Nation)"
    @cp = "93100"
    @ville ="Montreuil"
    @pays = "France"
end

def salle_regard_du_cygne
    @lieu = "Au regard du Cygne"
    @adresse = "210 rue de Belleville"
    @transport = "Metro Telegraphe, Jourdain, Place des fêtes"
    @cp = "75020"
    @ville = "Paris 20e"
    @pays = "France"
end


def salle_one_step
    @lieu = "One step"
    @adresse = "18-20 rue du Faubourg du Temple"
    @transport = "Métro: République"
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

    @user = @user_peter

    @titre = "Cours de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes, Corps, souffle, mouvement : La danse de l'Etre"
    @prix = 20
    @duree = 2.hour
    @reduit = "20 € / 17 € / 14 €"

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

    @user = @user_marc

    @titre = "Cours de danse des 5 rythmes"
    @description = "Cours avec Marc dans Paris"
    @prix = 20
    @duree = 2.hour
    @reduit = "A voir suivant demande"

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

    @user = @user_amelie

    @titre = "Cours de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes"
    @prix = 18
    @reduit = "18€ & 15€ étudiants, solidaire. 150€ carte 10 cours (valable dimanches et mardis)."
    @duree = 2.hour

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

    @user = @user_lise

    @titre = "Cours de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes avec Lise"
    @prix = 20
    @duree = 2.hour
    @reduit = "Cartes d'abonnement au trimestre et à l'année dès septembre"

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
    #               Création des cours de Véronique May B
    #------------------------------------------------------------------------------

    @user = @user_veronique

    @titre = "Stage de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes"
    @prix = 20
    @reduit = ""
    @duree = 2.hour + 30.minute

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
    @reduit =""
    @duree = 2.hour


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

    @user = @user_garance

    @titre = "Atelier de Open floor"
    @description = "Pas de description"
    @prix = 20
    @reduit = "15 (étudiants, RSA...)"
    @duree = 2.hour

    @liste = [DateTime.new(2016,9,25,11,00),
              DateTime.new(2016,10,23,11,00),
              DateTime.new(2016,11,27,11,00),
              DateTime.new(2016,12,18,11,00)
    ]

    salle_alter
    creer_la_liste

    #------------------------------------------------------------------------------
    #               Création des cours d'Omar
    #------------------------------------------------------------------------------

    @user = @user_omar


    @titre = "Stage de danse des 5 rythmes"
    @description = "Cours de danse des 5 rythmes"
    @prix = 20
    @reduit = "Oui, à demander sur place "
    @duree = 2.hour + 45.minute


    # Vendredi 02/09 de 19:15 à 22:00 May B
    salle_micadanse_may_b
    @duree = 2.hour + 45.minute
    @liste = [DateTime.new(2016,9,2,19,15)]
    creer_la_liste

    # >Samedi 10/09 de 16:15 à 19:00 Noces
    salle_micadanse_noces
    @duree = 2.hour + 45.minute
    @liste = [DateTime.new(2016,9,10,16,15)]
    creer_la_liste

    # > Samedi 08/10 de 17:15 à 20:00 May B
    salle_micadanse_may_b
    @duree = 2.hour + 45.minute
    @liste = [DateTime.new(2016,10,8,17,15)]
    creer_la_liste

    # > Samedi 30/10 de 17:15 à 19:00 May B
    salle_micadanse_may_b
    @duree = 1.hour + 45.minute
    @liste = [DateTime.new(2016,10,30,17,15)]
    creer_la_liste

    # Exception Vendredis 11/11 à One step 19h>21h30
    salle_one_step
    @duree = 2.hour + 30.minute
    @liste = [DateTime.new(2016,11,11,19,00)]
    creer_la_liste

    # > samedi 12/11 de 16:15 à 19:00 May B
    @salle_micadanse_may_b
    @duree = 2.hour + 45.minute
    @liste = [DateTime.new(2016,11,12,19,00)]
    creer_la_liste

    # > Dimanche 20/11 de 19:15 à 21:00 May B
    @salle_micadanse_may_b
    @duree = 2.hour + 45.minute
    @liste = [DateTime.new(2016,11,20,19,15)]
    creer_la_liste

    # > Samedi 10/12 de 18:15 à 21:00 May B
    @salle_micadanse_may_b
    @duree = 2.hour + 45.minute
    @liste = [DateTime.new(2016,12,10,18,15)]
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
