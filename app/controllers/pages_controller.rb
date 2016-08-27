class PagesController < ApplicationController
  def home
  end
  def search

        if params[:mots]
            @mot = params[:mots].downcase

            @events = search_string(@mot)

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

        # recherche des evenements contenant le mot
        @events = @events.select{ |e| e.search_text.include?(mot)}
  end
end
