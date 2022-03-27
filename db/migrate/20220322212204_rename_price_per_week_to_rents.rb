class RenamePricePerWeekToRents < ActiveRecord::Migration[6.1]
  def change
    rename_column :rents, :price_per_week, :total_price
  end
end
