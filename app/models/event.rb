class Event < ApplicationRecord

    # Desciption avec le N premieres lettres seulement du champs
    def description_courte
      if self.description
          return self.description[1..10]
      end
    end

    # Date sous forme jour mois année
    def horaire_affiche
      text_horaire = self.horaire.to_s
      text_aff = text_horaire[8..9] +"-"+text_horaire[5..6]+"-"+text_horaire[0..3]
    end
end
