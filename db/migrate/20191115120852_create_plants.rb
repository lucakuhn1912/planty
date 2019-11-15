class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.text :description
      t.string :location
      t.float :price_per_day
      t.boolean :availability
      t.references :owner, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
