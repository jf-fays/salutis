class PrescriptionMedicine < ApplicationRecord
  belongs_to :prescription
  belongs_to :medicine
  has_many :prescription_daily_takes
  has_many :daily_take, through: :prescription_daily_takes

  validates :dosage, :duration, presence: true
  validates :duration, numericality: true
end
