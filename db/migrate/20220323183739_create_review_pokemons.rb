class CreateReviewPokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :review_pokemons do |t|
      t.string :content
      t.integer :rating
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
