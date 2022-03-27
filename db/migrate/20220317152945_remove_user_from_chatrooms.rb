class RemoveUserFromChatrooms < ActiveRecord::Migration[6.1]
  def change
    remove_reference :chatrooms, :user, foreign_key: true
  end
end
