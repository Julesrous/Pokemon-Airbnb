class CreateUserReviewParticipations < ActiveRecord::Migration[6.1]
  def change
    create_table :user_review_participations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :review_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
