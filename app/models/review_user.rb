class ReviewUser < ApplicationRecord
  belongs_to :user

  validates :content, :rating, presence: true
end
