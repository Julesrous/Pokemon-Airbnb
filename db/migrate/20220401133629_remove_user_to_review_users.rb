class RemoveUserToReviewUsers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :review_users, :user, foreign_key: true, index: false
  end
end
