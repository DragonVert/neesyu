class PagesController < ApplicationController
  def home
  end
  def contact
  end
  def search
        if params[:mots]
            @ligne = params[:mots].downcase
            @mot = @ligne.split(' ')

            @events = Event.all
            @profils = Profil.all
            # rechercher successivement dans la liste avec les mots
            @mot.each do |mot|
                # chercher les evenements avec mot
                @events = search_event_string(mot,@events)

                # chercher les profils avec mot
                @profils = search_profil_string(mot,@profils)
            end

            if @events
                @events.sort_by! { |e| e.debut }
            end

            if @profils
                @profils.sort_by! { |e| e.pseudo }
            end

            @afficher = (@nb_events_trouves + @nb_profils_trouves) > 0

            if !@afficher
                flash[:notice] = "Aucun résultat à votre recherche"
            else
                flash[:notice] = "Nous avons trouve #{@nb_events_trouves} events et #{@nb_profils_trouves} profils !!"
            end

        end
  end

  def search_event_string(mot,events)

        # Liste des evenements dans laquelle chercher
        @events_search = events
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

  def search_profil_string(mot,profils)

        # Liste des profils dans laquelle chercher
        @profils_search = profils
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
