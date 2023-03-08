class DailyTake < ApplicationRecord
  has_many :prescription_daily_takes
  has_many :prescription_medicines, through: :prescription_daily_takes

  SEMAINES = %w(Lundi Mardi Mercredi Jeudi Vendredi Samedi Dimanche)
  JOURS = ["Matin", "Midi", "Soir", "Nuit", "Si besoin"]

  validates :day, presence: true
  validates :day, { in: SEMAINES,
    message: "%{value} ne fait pas parti des jours de la semaine" }
  validates :day_time, presence: true
  validates :day_time, { in: JOURS,
    message: "%{value} ne fait pas parti des jours de la semaine" }
end
