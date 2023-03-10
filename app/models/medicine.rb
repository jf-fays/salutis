class Medicine < ApplicationRecord
  has_many :prescriptions_medecines
  has_many :prescriptions, through: :prescription_medicines

  # NRMEDECINE = ['Non-Remboursable', 'Remboursable']

  validates :NR, :name, presence: true
  # validates :NR, inclusion: { in: NRMEDECINE }
end
