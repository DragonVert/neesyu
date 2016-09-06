class User < ApplicationRecord
  has_one :profil, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :participations, dependent: :destroy
  has_many :interets, dependent: :destroy
  has_many :suivis, dependent: :destroy
  has_attachment :avatar, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,:registerable,
         :recoverable, :rememberable, :trackable, :validatable

def participe_deja?(event)
    event.participations.find_by(user: self)
end
def interet_deja?(event)
    event.interets.find_by(user: self)
end
def suivi_deja?(profil)
    profil.suivis.find_by(user: self)
end
end
