class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :description
      t.integer :neighborhood_id
      t.string :city_state

      t.timestamps
    end
  end
end
