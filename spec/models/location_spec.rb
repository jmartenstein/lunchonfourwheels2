require 'spec_helper'

describe Location do

  before :each do
    @location0 = Location.new()
    @location1 = Location.new( :address => "1 Location St." )
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

end
