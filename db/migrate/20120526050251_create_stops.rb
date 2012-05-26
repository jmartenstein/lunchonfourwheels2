class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :truck_id
      t.integer :location_id
      t.string :day
      t.string :hours

      t.timestamps
    end
  end
end
