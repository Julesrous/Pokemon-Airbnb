class AddUserToReviewPokemons < ActiveRecord::Migration[6.1]
  def change
    add_reference :review_pokemons, :user, foreign_key: true
  end
end
