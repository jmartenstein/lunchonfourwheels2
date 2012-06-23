class Truck < ActiveRecord::Base
  has_many :one_time_stops
  has_many :recurring_stops
  validates_presence_of :name

end
