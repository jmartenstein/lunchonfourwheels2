require 'spec_helper'

describe Truck do
 
  before :each do 
    @marination_truck = Truck.find_by_name("Marination Mobile")
    @pais_truck = Truck.find_by_name("Pai's")
  end

  describe "#new" do
    it "returns a Truck object" do
      @marination_truck.should be_an_instance_of Truck
    end
  end

  describe "#find_stops_by_date" do

    it "takes a date paramemter and returns a Stop object" do
      stop = @marination_truck.find_stops_by_date( 
        Date.new(2012, 5, 31) ).first
      stop.location.address.should eql "2401 Utah Ave. S"
    end

    it "should not simply match the first item in the list" do
      stop = @pais_truck.find_stops_by_date( 
        Date.new(2012, 6, 1) ).first
      stop.location.address.should_not eql "1126 Harrison St."
    end

  end

end
