require 'spec_helper'

describe Truck do
 
  before :each do 
    @truck0    = Truck.new()
    @truck1    = Truck.create( :name => "Truck1" )

    @tomorrow       = Date.today + 1
    @tomorrow_loc   = Location.new( :address => "555 5th St." )
    @tomorrow_stop  = Stop.new( :truck_id => 1, :location_id => 1,
                        :day => @tomorrow.to_s )

    @today       = Date.today
    @today_loc   = Location.new( :address => "1 Location St." )
    @today_stop  = Stop.new( :truck_id => 1, :location_id => 2,
                     :day => @today.to_s )
  end  # before :each

  after :each do
    @truck1.destroy
  end

  it "is a truck" do
    @truck1.should be_an_instance_of Truck
  end

  it "is valid" do
    @truck1.should be_valid
  end

  it "is invalid without a name" do
    @truck0.should have(1).error_on(:name)
    @truck0.should_not be_valid
  end

end
