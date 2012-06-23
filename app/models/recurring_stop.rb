class RecurringStop < ActiveRecord::Base
  belongs_to :truck
  belongs_to :location
  validates  :truck_id, :location_id, :day_of_week, :presence => true
end
