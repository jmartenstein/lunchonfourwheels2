class ChangeDayToDate < ActiveRecord::Migration
  def up
    remove_column :stops, :day
    add_column :stops, :day, :date
  end

  def down
    add_column :stops, :day, :string
    remove_column :stops, :day
  end
end
