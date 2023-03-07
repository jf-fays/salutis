class PrescriptionDailyTake < ApplicationRecord
  belongs_to :daily_take
  belongs_to :prescription_medicine
end
