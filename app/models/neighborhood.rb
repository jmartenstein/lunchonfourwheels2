class Neighborhood < ActiveRecord::Base
  has_many :locations
  has_many :stops, :through => :locations
end
