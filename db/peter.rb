Event.destroy_all
Profil.destroy_all
User.destroy_all

@user = User.create!( email: "  bodyvoiceandbeing@gmail.com     ", password: "foobar")
@profil = Profil.create!( nom: "Wilberforce", prenom: "Peter", site: "  http://www.bodyvoiceandbeing.com/   ", activite: "5 rythmes", user: @user)
@profil.pseudo = @profil.prenom.capitalize + " " + @profil.nom.first.capitalize + "."
@profil.save

@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   9   ,   13  ,   19  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   9   ,   13  ,   21  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     Micadanses - Studio May B   "; @evt.adresse =  "  15, rue Geoffroy L Asnier   "; @evt.cp = "    75004   "; @evt.ville = "     Paris   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° : St Paul  - Pont Marie - Hôtel de ville "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   10  ,   5   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   10  ,   5   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   10  ,   12  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   10  ,   12  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   10  ,   19  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   10  ,   19  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   10  ,   26  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   10  ,   26  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   11  ,   2   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   11  ,   2   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   11  ,   9   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   11  ,   9   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   11  ,   16  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   11  ,   16  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   11  ,   23  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   11  ,   23  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   11  ,   30  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   11  ,   30  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   12  ,   7   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   12  ,   7   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   12  ,   14  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   12  ,   14  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2016    ,   12  ,   21  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2016    ,   12  ,   21  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   1   ,   4   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   1   ,   4   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   1   ,   11  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   1   ,   11  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   1   ,   18  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   1   ,   18  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   1   ,   25  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   1   ,   25  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   2   ,   1   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   2   ,   1   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   2   ,   8   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   2   ,   8   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   2   ,   15  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   2   ,   15  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   2   ,   22  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   2   ,   22  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   3   ,   1   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   3   ,   1   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   3   ,   8   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   3   ,   8   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   3   ,   15  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   3   ,   15  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   3   ,   22  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   3   ,   22  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   3   ,   29  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   3   ,   29  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   4   ,   5   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   4   ,   5   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   4   ,   12  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   4   ,   12  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   4   ,   19  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   4   ,   19  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   4   ,   26  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   4   ,   26  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   5   ,   3   ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   5   ,   3   ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   5   ,   10  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   5   ,   10  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new; @evt.titre = "   Danser la vague des 5 Rythmes   "; @evt.description = "Cours de rythmes"; @evt.debut = DateTime.new(  2017    ,   5   ,   17  ,   20  ,   0   ); @evt.fin =  DateTime.new(  2017    ,   5   ,   17  ,   22  ,   0   ); @evt.prix =     20  ; @evt.lieu = "     La Guillotine   "; @evt.adresse =  "  24, rue Robespierre "; @evt.cp = "    93100   "; @evt.ville = "     Montreuil   "; @evt.pays = " France"; @evt.reduit = "        17€   14€   "; @evt.transport =  "    M° Robespierre  "; @evt.user = @user; @evt.set_search; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   5   ,   24  ,   20  ,   0   ) ;  @evt.fin =  DateTime.new(  2017    ,   5   ,   24  ,   22  ,   0   ) ; @evt.prix =     20  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        17€   14€   ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   5   ,   31  ,   20  ,   0   ) ;  @evt.fin =  DateTime.new(  2017    ,   5   ,   31  ,   22  ,   0   ) ; @evt.prix =     20  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        17€   14€   ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   6   ,   7   ,   20  ,   0   ) ;  @evt.fin =  DateTime.new(  2017    ,   6   ,   7   ,   22  ,   0   ) ; @evt.prix =     20  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        17€   14€   ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   6   ,   14  ,   20  ,   0   ) ;  @evt.fin =  DateTime.new(  2017    ,   6   ,   14  ,   22  ,   0   ) ; @evt.prix =     20  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        17€   14€   ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   6   ,   21  ,   20  ,   0   ) ;  @evt.fin =  DateTime.new(  2017    ,   6   ,   21  ,   22  ,   0   ) ; @evt.prix =     20  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        17€   14€   ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   10  ,   2   ,   12  ,   30  ) ;  @evt.fin =  DateTime.new(  2017    ,   10  ,   2   ,   17  ,   30  ) ; @evt.prix =     60  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        165€ pour trois, 350€ les 7 ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   11  ,   6   ,   12  ,   30  ) ;  @evt.fin =  DateTime.new(  2017    ,   11  ,   6   ,   17  ,   30  ) ; @evt.prix =     60  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        165€ pour trois, 350€ les 7 ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   12  ,   4   ,   12  ,   30  ) ;  @evt.fin =  DateTime.new(  2017    ,   12  ,   4   ,   17  ,   30  ) ; @evt.prix =     60  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        165€ pour trois, 350€ les 7 ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   2   ,   5   ,   12  ,   30  ) ;  @evt.fin =  DateTime.new(  2017    ,   2   ,   5   ,   17  ,   30  ) ; @evt.prix =     60  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        165€ pour trois, 350€ les 7 ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   3   ,   5   ,   12  ,   30  ) ;  @evt.fin =  DateTime.new(  2017    ,   3   ,   5   ,   17  ,   30  ) ; @evt.prix =     60  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        165€ pour trois, 350€ les 7 ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   4   ,   9   ,   12  ,   30  ) ;  @evt.fin =  DateTime.new(  2017    ,   4   ,   9   ,   17  ,   30  ) ; @evt.prix =     60  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        165€ pour trois, 350€ les 7 ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save
@evt = Event.new ; @evt.titre = '   Danser la vague des 5 Rythmes   ' ; @evt.description = 'Cours de rythmes' ; @evt.debut = DateTime.new(  2017    ,   5   ,   7   ,   12  ,   30  ) ;  @evt.fin =  DateTime.new(  2017    ,   5   ,   7   ,   17  ,   30  ) ; @evt.prix =     60  ; @evt.lieu = '     La Guillotine   ' ;  @evt.adresse =  '  24, rue Robespierre ' ;  @evt.cp = '    93100   ' ;  @evt.ville = '     Montreuil   ' ;  @evt.pays = ' France' ; @evt.reduit = '        165€ pour trois, 350€ les 7 ' ;  @evt.transport =  '    M° Robespierre  ' ;  @evt.user =  @user ;   ; @evt.set_search ; @evt.save