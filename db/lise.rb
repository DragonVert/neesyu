# Fichier de Lise

@user = User.create!( email: "  merlinlise@gmail.com    ", password: "foobar")
@profil = Profil.create!( nom: "Merlin", prenom: "Lise", site: "  http://merlinlise.wixsite.com/dansenative   ", activite: "5 rythmes", user: @user)
@profil.pseudo = @profil.prenom.capitalize + " " + @profil.nom.first.capitalize + "."
@profil.save

@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   8   ,   31  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   8   ,   31  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     Micadanses - Studio May B   "; @evt.adresse =  "  15, rue Geoffroy L Asnier   "; @evt.cp = "    75004   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° : St Paul  - Pont Marie - Hôtel de ville "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   9   ,   7   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   9   ,   7   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   9   ,   14  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   9   ,   14  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   9   ,   21  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   9   ,   21  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   9   ,   28  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   9   ,   28  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   10  ,   5   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   10  ,   5   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   10  ,   12  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   10  ,   12  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   10  ,   19  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   10  ,   19  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   10  ,   26  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   10  ,   26  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   11  ,   2   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   11  ,   2   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   11  ,   9   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   11  ,   9   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   11  ,   16  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   11  ,   16  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   11  ,   23  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   11  ,   23  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   11  ,   30  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   11  ,   30  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   12  ,   7   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   12  ,   7   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   12  ,   14  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   12  ,   14  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   12  ,   21  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   12  ,   21  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2016    ,   12  ,   28  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2016    ,   12  ,   28  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   1   ,   4   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   1   ,   4   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   1   ,   11  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   1   ,   11  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   1   ,   18  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   1   ,   18  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   1   ,   25  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   1   ,   25  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   2   ,   1   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   2   ,   1   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   2   ,   8   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   2   ,   8   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   2   ,   15  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   2   ,   15  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   2   ,   22  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   2   ,   22  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   3   ,   1   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   3   ,   1   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   3   ,   8   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   3   ,   8   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   3   ,   15  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   3   ,   15  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   3   ,   22  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   3   ,   22  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   4   ,   5   ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   4   ,   5   ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   4   ,   12  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   4   ,   12  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   " ; @evt.description = "Cours de rythmes" ; @evt.debut = DateTime.new(  2017    ,   4   ,   19  ,   19  ,   30  ); @evt.fin =  DateTime.new(  2017    ,   4   ,   19  ,   21  ,   30  ); @evt.prix =     20  ; @evt.lieu = "     Studio One Step "; @evt.adresse =  "  18, rue Fb du Temple    "; @evt.cp = "    75011   "; @evt.ville = "     Paris   "; @evt.pays = " France" ; @evt.reduit = "        15  "; @evt.transport =  "    M° République -  sortie  4  "; @evt.user =  @user; @evt.set_search; @evt.save
