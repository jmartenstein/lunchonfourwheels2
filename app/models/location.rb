class Location < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :stops
  validates_presence_of :address
end
