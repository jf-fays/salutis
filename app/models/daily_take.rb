class DailyTake < ApplicationRecord
  has_many :prescription_daily_takes
  has_many :prescription_medicines, through: :prescription_daily_takes
end
