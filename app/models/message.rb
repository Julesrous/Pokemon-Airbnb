class Message < ApplicationRecord
  acts_as_readable on: :created_at
  belongs_to :user
  belongs_to :chatroom
end
