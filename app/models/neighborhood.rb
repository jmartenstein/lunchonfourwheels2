class Neighborhood < ActiveRecord::Base
  has_many :locations
  has_many :one_time_stops, :through => :locations
end
