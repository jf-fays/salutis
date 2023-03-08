class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # Include default devise modules. Others available are:
  SPECIALITIES = %w(chirurgie cardiologie anésthésiologie gynécologie medecine pharmacie pneumologie radiologie infirmière radiothérapie)
  has_many :messages
  has_many :consultations
  has_many :prescriptions
  has_many :medical_records
  has_many :patients, through: :consultations
  has_many :chatrooms, through: :messages
  # validates :password, length: { minimum: 6 }
  validates :first_name, :last_name, :email, :password, :speciality, :authentification_number, presence: true
  # validates :email, uniqueness: true
  validates :email, format: { with: /\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+/, message: "Format invalide" }
  # validates :password, length: { minimum: 6 }
  validates :speciality, inclusion: { in: SPECIALITIES,
    message: "%{value} n'est pas compris dans la liste" }
  validates :authentification_number, numericality: { only_integer: true }
  validates :authentification_number, length: { in: 9..11 }
end
