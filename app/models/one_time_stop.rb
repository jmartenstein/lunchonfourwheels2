class OneTimeStop < ActiveRecord::Base
  belongs_to :truck
  belongs_to :location
  validates  :truck_id, :location_id, :day, :presence => true
end
