class PagesController < ApplicationController
  def home
  end
  def search

        if params[:mots]
            @mot = params[:mots].split(' ')

            @events = []
            @profils = []
            @mot.each do |mot|
                # chercher les evenements avec mot
                @liste_events = search_event_string(mot)
                @events = @events + @liste_events

                # chercher les profils avec mot
                @liste_profils = search_profil_string(mot)
                @profils = @profils + @liste_profils

            end

            @events.sort_by! { |e| e.debut }
            @profils.sort_by! { |e| e.pseudo }

            @afficher = (@profils.count > 0) || (@events.count > 0)

            if !@afficher
                flash[:notice] = "Aucun résultat à votre recherche"
                redirect_to (:back)
            end

        end
  end

  def search_event_string(mot)

        # Liste des evenements
        @events_search = Event.all

        # recherche des evenements contenant le mot
        @events_search = @events_search.select{ |e| e.search_text.include?(mot)}

        if @events_search.nil?
            @events_search = []
        end

        return @events_search
  end

  def search_profil_string(mot)

        # Liste des profils
        @profils_search = Profil.all

        # recherche des evenements contenant le mot
        @profils_search = @profils_search.select{ |p| p.search_text.include?(mot)}

        if @profils_search.nil?
            @profils_search = []
        end

        return @profils_search
  end
end
