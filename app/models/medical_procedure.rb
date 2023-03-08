class MedicalProcedure < ApplicationRecord
  has_many :prescription_medicines
  has_many :prescriptions, through: :prescriptions_medicines
end
