class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations
end
