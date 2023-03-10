class Patient < ApplicationRecord
  has_many :chatrooms
  has_many :consultations
  has_many :doctors, through: :consultations, class_name: 'User'

  GENDERS = ["masculin", "féminin"]

  validates :first_name, :last_name, :birthday, :social_security_number, presence: true
  validates :height, :weight, :gender, presence: true
  validates :birthday, comparison: { less_than: Date.today }
  validates :social_security_number, length: { is: 15 }
  validates :social_security_number, uniqueness: true
  validates :height, numericality: true
  validates :weight, numericality: true
  validates :gender, inclusion: { in: GENDERS, message: "n'apparait pas dans la liste" }

  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_last_name_and_social_security_number,
  against: [ :first_name, :last_name, :social_security_number ],
  using: {
    tsearch: { prefix: true }
  }
end
