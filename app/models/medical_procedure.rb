class MedicalProcedure < ApplicationRecord
  has_many :prescription_medicines
  has_many :prescriptions, through: :prescriptions_medicines

  validates :content, presence: true
  validates :content, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
end
