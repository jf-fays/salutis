class Patient < ApplicationRecord
  has_many :chatrooms
  has_many :consultations
  has_many :prescriptions
  has_many :doctors, through: :consultations, class_name: 'User'

  # validates :first_name, :last_name, :birthday, :security_number, :pathology, :medical_record, presence: true
  # validates :height, :weight, :gender, presence: true
  # validates :birthday, other_than: Date.today
  # validates :security_number, lenght: { is: 15 }
  # validates :pathology
  # validates :height, numericality: true
  # validates :weight, numericality: true
  # validates :gender, { in: %w(Masculin Féminin),
  #   message: "%{value} n'apparait pas dans la liste" }
end
