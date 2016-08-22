class Event < ApplicationRecord

    # Jour de la semaine pour affichage
    JOURDESEMAINE = ["Dim","Lun","Mar","Mer","Jeu","Ven","Sam"]
    # Desciption avec le N premieres lettres seulement du champs
    def description_courte
      if self.description
          return self.description[0..10]+"..."
      end
    end

    # Date sous forme jour_sem jj-mm-aaaa
    def debut_jour
      if self.debut
        text_date = self.debut.to_s
        text_aff = JOURDESEMAINE[self.debut.wday] + " " +text_date[8..9] +"-"+text_date[5..6]+"-"+text_date[0..3]
      end
    end

    # Debut sous forme hh:mm
    def debut_heure
      if self.debut
        text_date = self.debut.to_s
        text_aff = text_date[11..15]
      end
    end
end
