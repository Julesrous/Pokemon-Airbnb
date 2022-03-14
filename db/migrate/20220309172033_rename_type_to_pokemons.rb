class RenameTypeToPokemons < ActiveRecord::Migration[6.1]
  def change
    rename_column :pokemons, :type, :power
  end
end
