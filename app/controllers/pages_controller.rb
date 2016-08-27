class PagesController < ApplicationController
  def home
  end
  def search

        if params[:mots]
            @ligne = params[:mots]

            @events = search_string(@ligne)

            @events.sort_by! { |e| e.debut }

            if @events.count > 1
                render "events/index"
            else
                flash[:notice] = "Aucun résultat à votre recherche"
                redirect_to :back
            end
        end
  end

  def search_string(mot)

        # Liste des evenements
        @events = Event.all

        # recherche par nom
        @events_nom = @events.select{ |e| e.user.profil.nom.include?(mot)}

        # recherche par prenom
        @events_prenom = @events.select{ |e| e.user.profil.prenom.include?(mot)}

        # recherche par titre
        @events_titre = @events.select{ |e| e.titre.include?(mot)}

        @events = @events_titre + @events_nom + @events_prenom
  end
end
