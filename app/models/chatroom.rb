class Chatroom < ApplicationRecord
  belongs_to :patient
  has_many :messages
  has_many :users, through: :messages
end
