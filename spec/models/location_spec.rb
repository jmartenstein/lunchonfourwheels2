require 'spec_helper'

describe Location do

  before :each do
    @location0 = Location.new()
    @location1 = Location.new( :address => "1126 Harrison Street, Seattle, WA" )
    @location2 = Location.new( :address => "2401 Utah Ave. S, Seattle, WA" )
  end

  it "is a location" do
    @location1.should be_an_instance_of Location
  end

  it "is valid" do
    @location1.should be_valid
  end

  it "is invalid without an address" do
    @location0.should have(1).error_on(:address)
    @location0.should_not be_valid
  end

  it "can lookup a lat long with an address" do
    loc_array = @location1.lookup_lat_long()
    loc_array[0].should == 47.6220465
    loc_array[1].should == -122.33502360
  end

  it "matches '1126 Harrison St. with a latitude and longitude" do
    @location1.latitude.should == 47.6220465
    @location1.longitude.should == -122.33502360
  end

  it "matches '2401 Utah Ave. S' with a latitude and longitude" do
    @location2.latitude.should == 47.58046290
    @location2.longitude.should == -122.33589650
  end

end
