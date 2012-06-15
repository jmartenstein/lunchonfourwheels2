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

  describe "#find_stops_by_date" do

    before :each do
      @tomorrow_loc.save
      @today_loc.save
      @tomorrow_stop.save
      @today_stop.save
    end

    after :each do
      @tomorrow_loc.destroy
      @today_loc.destroy
      @tomorrow_stop.destroy
      @today_stop.destroy
    end

    it "returns an ActiveRecord relation" do
      stops = @truck1.find_stops_by_date( Date.today )
      stops.class.should eql ActiveRecord::Relation
    end

    it "returns a stop for today's date" do
      stops = @truck1.find_stops_by_date( Date.today )
      stops.first.location.address.should eql @today_loc.address
    end

  end  # describe find_stops_by_date

  describe "#find_stops_by_date_range" do

    before :each do
      @tomorrow_loc.save
      @today_loc.save
      @tomorrow_stop.save
      @today_stop.save
    end

    after :each do
      @tomorrow_loc.destroy
      @today_loc.destroy
      @tomorrow_stop.destroy
      @today_stop.destroy
    end

    it "returns a nil object if the second date is earlier than the first" do
      stops = @truck1.find_stops_by_date_range(
        @tomorrow, @today )
      stops.should eql nil
    end

    it "takes two date parameters and returns an array of Stop objects" do
      stops = @truck1.find_stops_by_date_range( @today, @tomorrow )
      stops[0].location.address.should eql @today_loc.address
      stops[1].location.address.should eql @tomorrow_loc.address
    end

    it "takes the same date twice and returns Stops for that day" do
      stops = @truck1.find_stops_by_date_range( @today, @today)
      stops.first.location.address.should eql @today_loc.address
    end

  end  # describe find_stops_by_date_range

end
