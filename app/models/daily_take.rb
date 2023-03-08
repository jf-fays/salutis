class DailyTake < ApplicationRecord
  has_many :prescription_daily_takes
  has_many :prescription_medicines, through: :prescription_daily_takes

  validates :day, presence: true
  # validates :day, { in: %w(Lundi Mardi Mercredi Jeudi Vendredi Samedi Dimanche),
  #   message: "%{value} ne fait pas parti des jours de la semaine" }
end
