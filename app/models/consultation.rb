class Consultation < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  has_many :prescriptions
  has_many_attached :photos
end
