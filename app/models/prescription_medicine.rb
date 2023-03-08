class PrescriptionMedicine < ApplicationRecord
  belongs_to :prescription
  belongs_to :medical_procedure
  belongs_to :medicine
end
