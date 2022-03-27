class AddPricePerWeekToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :price, :integer
  end
end
