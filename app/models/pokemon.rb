class Pokemon < ApplicationRecord
  has_one_attached :photo
  belongs_to :user

  validates :name, :nature, :power, :level, :description, presence: true
end
