class Event < ApplicationRecord

    belongs_to :user
    has_attachment :photo


    # Jour de la semaine pour affichage
    JOURDESEMAINE = ["Dim","Lun","Mar","Mer","Jeu","Ven","Sam"]
    # Desciption avec le N premieres lettres seulement du champs
    def description_courte
      if self.description
          return self.description[0..10]+ "..."
      end
    end

    # Date sous forme jour_sem jj-mm-aaaa
    def debut_jour
      if self.debut
        text_date = self.debut.to_s.downcase
        text_aff = JOURDESEMAINE[self.debut.wday] + " " +text_date[8..9] + "-"+text_date[5..6]+ "-"+text_date[0..3]
      end
    end

    # Debut sous forme hh:mm
    def debut_heure
      if self.debut
        text_date = self.debut.to_s.downcase
        text_aff = text_date[11..15]
      end
    end

    # Mettre a jour le search_text
    def set_search
            self.search_text =  self.titre.to_s.downcase +
                               "/" + self.description.to_s.downcase +
                               "/" + self.lieu.to_s.downcase +
                               "/" + self.adresse.to_s.downcase +
                               "/" + self.cp.to_s.downcase +
                               "/" + self.ville.to_s.downcase +
                               "/" + self.pays.to_s.downcase +
                               "/" + self.transport.to_s.downcase

            if self.user.profil
                    self.search_text =  self.search_text +
                               "/" + self.user.profil.nom.to_s.downcase +
                               "/" + self.user.profil.prenom.to_s.downcase +
                               "/" + self.user.profil.pseudo.to_s.downcase +
                               "/" + self.user.profil.detail.to_s.downcase +
                               "/" + self.user.profil.activite.to_s.downcase
            end
    end
end
