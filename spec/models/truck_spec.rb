require 'spec_helper'

describe Truck do
 
  before :each do 
    @marination_truck = Truck.find_by_name("Marination Mobile")
    @pais_truck = Truck.find_by_name("Pai's")
  end  # before :each

  describe "#new" do
    it "returns a Truck object" do
      @marination_truck.should be_an_instance_of Truck
    end
  end  #new 

  describe "#find_stops_by_date" do

    it "takes a date parameter and returns an array of stops" do
      stops = @marination_truck.find_stops_by_date( Date.today )
      stops.class.should eql ActiveRecord::Relation
    end

    it "takes a date paramemter at least one stop for that date" do
      stops = @marination_truck.find_stops_by_date( 
        Date.new(2012, 5, 31) )
      stops.first.location.address.should eql "2401 Utah Ave. S"
    end

    it "doesn't just match the first item in the list" do
      stops = @pais_truck.find_stops_by_date( 
        Date.new(2012, 6, 1) )
      stops.first.location.address.should_not eql "1126 Harrison St."
    end

  end  # describe find_stops_by_date

  describe "#find_stops_by_date_range" do
   

    it "returns a nil object if the second date is earlier than the first" do
      stops = @pais_truck.find_stops_by_date_range(
        Date.new(2012, 5, 29), Date.new(2012, 5, 27) )
      stops.should eql nil
    end

    it "takes two date parameters and returns an array of Stop objects" do
      stops = @pais_truck.find_stops_by_date_range(
        Date.new(2012, 5, 29), Date.new(2012, 6, 1) )
      stops[0].location.address.should eql "1126 Harrison St."
      stops[1].location.address.should eql "2401 Utah Ave. S"
    end

    it "takes the same date twice and returns Stops for that day" do
      stops = @pais_truck.find_stops_by_date_range(
        Date.new(2012, 6, 1), Date.new(2012, 6, 1) )
      stops.first.location.address.should eql "2401 Utah Ave. S"
    end

  end  # describe find_stops_by_date_range

end
