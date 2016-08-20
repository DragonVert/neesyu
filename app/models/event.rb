class Event < ApplicationRecord

    # Desciption avec le N premieres lettres seulement du champs
    def description_courte
      if self.description
          return self.description[1..10]
      end
    end

    # Date sous forme jour mois année
    def debut_affiche
      if self.debut
        text_horaire = self.debut.to_s
        text_aff = text_horaire[8..9] +"-"+text_horaire[5..6]+"-"+text_horaire[0..3]
      end
    end
end
