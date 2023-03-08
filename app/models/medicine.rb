class Medicine < ApplicationRecord
  has_many :prescriptions_medecines
  has_many :prescriptions, through: :prescription_medicines

  validates :NR, :name, presence: true
  validates :NR, inclusion: { in: ['Non-Remboursable', 'Remboursable'] }
end
