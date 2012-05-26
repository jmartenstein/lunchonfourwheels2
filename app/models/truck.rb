class Truck < ActiveRecord::Base
  has_many :stops, :dependent => :destroy
end
