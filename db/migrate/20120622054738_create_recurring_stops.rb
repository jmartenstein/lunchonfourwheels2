class CreateRecurringStops < ActiveRecord::Migration
  def change
    create_table :recurring_stops do |t|
      t.integer :truck_id
      t.integer :location_id
      t.integer :day_of_week
      t.date :start_date
      t.date :end_date
      t.integer :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
