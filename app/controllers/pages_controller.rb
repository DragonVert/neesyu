class PagesController < ApplicationController
  def home
  end
  def contact
  end
  def search
        if params[:mots]
            @ligne = params[:mots].downcase
            @mot = @ligne.split(' ')

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
            else
                flash[:notice] = "Nous avons trouve #{@nb_events_trouves} events et #{@nb_profils_trouves} profils !!"
            end

        end
  end

  def search_event_string(mot)

        # Liste des evenements
        @events_search = Event.all
        if @events_search.nil?
            @events_search = []
            @nb_events_trouves = 0
        else
            # recherche des evenements contenant le mot
            @events_search = @events_search.select{ |e| e.search_text.to_s.include?(mot)}
            @nb_events_trouves = @events_search.count
        end

        return @events_search
  end

  def search_profil_string(mot)

        # Liste des profils
        @profils_search = Profil.all
        if @profils_search.nil?
            @profils_search = []
            @nb_profils_trouves = 0
        else
            # recherche des evenements contenant le mot
            @profils_search = @profils_search.select{ |p| p.search_text.to_s.include?(mot)}
            @nb_profils_trouves = @profils_search.count
        end

        return @profils_search
  end
end
