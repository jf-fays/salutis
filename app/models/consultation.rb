class Consultation < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  has_many :prescriptions
  has_many :medical_records

  validates :date, presence: true
end
