class Consultation < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  has_many :prescriptions

  validates :date, presence: true
end
