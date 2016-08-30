class User < ApplicationRecord
  has_one :profil, dependent: :destroy
  has_many :events, dependent: :destroy
  has_attachment :avatar

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,:registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
