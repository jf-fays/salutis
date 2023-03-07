class Prescription < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  belongs_to :consultation
end
