class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages
  has_many :consultations
  has_many :prescriptions
  has_many :patients, through: :consultations
  has_many :chatrooms, through: :messages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
