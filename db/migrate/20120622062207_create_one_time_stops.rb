class CreateOneTimeStops < ActiveRecord::Migration
  def change
    create_table :one_time_stops do |t|
      t.integer :truck_id
      t.integer :location_id
      t.date :day
      t.integer :start_time
      t.integer :end_time
      t.boolean :cancelled_flag

      t.timestamps
    end
  end
end
