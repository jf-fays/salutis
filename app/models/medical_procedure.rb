class MedicalProcedure < ApplicationRecord
  belongs_to :prescriptions

  validates :content, presence: true
  validates :content, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
end
