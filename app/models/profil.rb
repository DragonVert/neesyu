class Profil < ApplicationRecord
  belongs_to :user
  has_many :suivis, dependent: :destroy
  validates :pseudo, uniqueness:, :presence => true

    # Mettre a jour le search_text
    def set_search
        self.search_text =  self.nom.to_s.downcase +
                               "/" + self.prenom.to_s.downcase +
                               "/" + self.pseudo.to_s.downcase +
                               "/" + self.detail.to_s.downcase +
                               "/" + self.activite.to_s.downcase
    end

end
