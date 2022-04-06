class ReviewUser < ApplicationRecord
  has_many :user_review_participations
  has_many :users, through: :user_review_participations

  validates :content, :rating, presence: true
end
