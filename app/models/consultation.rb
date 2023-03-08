class Consultation < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  has_many :prescriptions
end
