class Location < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :stops, :dependent => :destroy
end
