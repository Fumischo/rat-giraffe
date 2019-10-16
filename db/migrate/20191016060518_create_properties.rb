class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :rent
      t.string :address
      t.text :remarks_column

      t.timestamps
    end
  end
end
