class CreateClosestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :closest_stations do |t|
      t.string :route
      t.string :station
      t.integer :on_foot

      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
