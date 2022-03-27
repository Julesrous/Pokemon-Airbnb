class RenamePriceToPokemons < ActiveRecord::Migration[6.1]
  def change
    rename_column :pokemons, :price, :price_per_week
  end
end
