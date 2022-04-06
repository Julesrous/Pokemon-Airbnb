class UserReviewParticipation < ApplicationRecord
  belongs_to :user
  belongs_to :review_user
end
