class Patient < ApplicationRecord
  has_many :chatrooms
  has_many :consultations
  has_many :prescriptions
  has_many :doctors, through: :consultations, class_name: 'User'
end
