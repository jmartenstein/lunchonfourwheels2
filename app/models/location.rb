class Location < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :one_time_stops
  validates_presence_of :address
end
