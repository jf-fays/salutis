class DailyTake < ApplicationRecord
  has_many :prescription_daily_takes
  has_many :prescription_medicines, through: :prescription_daily_takes

  SEMAINES = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]
  JOURS = ["Matin", "Midi", "Soir", "Nuit", "Si besoin"]

  validates :day, presence: true
  validates :day, inclusion: { in: SEMAINES }
  validates :day_time, presence: true
  validates :day_time, inclusion: { in: JOURS }
end
