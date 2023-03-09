class Prescription < ApplicationRecord
  belongs_to :consultation
  has_many :prescription_medicines
  has_many :medicines, through: :prescription_medicines
  has_many :medical_procedures, through: :prescription_medicines
end
