class Suivi < ApplicationRecord
  belongs_to :user
  belongs_to :profil

  validates :user, uniqueness: {scope: :profil}
end


