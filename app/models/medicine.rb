class Medicine < ApplicationRecord
  has_many :prescriptions_medecines
  has_many :prescriptions, through: :prescription_medicines

  NRMEDECINE = ['Non-Remboursable', 'Remboursable']

  # validates :nr, :name, presence: true
  # validates :nr, inclusion: { in: NRMEDECINE }
end
