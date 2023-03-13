class Medicine < ApplicationRecord
  has_many :prescriptions_medecines
  has_many :prescriptions, through: :prescription_medicines

  # NRMEDECINE = ['Non-Remboursable', 'Remboursable']

  # validates :nr, :name, presence: true
  # validates :nr, inclusion: { in: NRMEDECINE }

  def name_form_medicine
    "#{self.name} - (#{self.form})"
  end
end
