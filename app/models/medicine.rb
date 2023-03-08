class Medicine < ApplicationRecord
  has_many :prescriptions_medecines
  has_many :prescriptions, through: :prescription_medicines

  validates :NR, :name, presence: true
  validates :NR, inclusion: ['Non-Remboursable', 'Remboursable']
  validates :NR, exlusion: [nil]
end
