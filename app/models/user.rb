class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages
  has_many :consultations
  has_many :prescriptions
  has_many :patients, through: :consultations
  has_many :chatrooms, through: :messages

  # validates :first_name, :last_name, :email, :password, :speciality, :authentification_number, presence: true
  # validates :email, uniqueness: true
  # validates :email, format: { with: /^w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/,
  #   message: "Format invalide" }
  # validates :password, length: { minimum: 6 }
  # validates :password, acceptance: { message: 'Doit avoir au minimum 6 caractères' }
  # validates :speciality, inclusion: { in: %w(Chirurgie Cardiologie Anésthésiologie Gynécologie Medecine Pharmacie Pneumologie Radiologie Infirmière Radiothérapie),
  #   message: "%{value} n'est pas compris dans la liste" }
  # validates :authentification_number, numericality: { only_integer: true }
  # validates :authentification_number, length: { in: 9..11 }
end
