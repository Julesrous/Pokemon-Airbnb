class CreateRents < ActiveRecord::Migration[6.1]
  def change
    create_table :rents do |t|
      t.date :start_time
      t.date :end_time
      t.integer :price_per_week
      t.references :user, null: false, foreign_key: true
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
