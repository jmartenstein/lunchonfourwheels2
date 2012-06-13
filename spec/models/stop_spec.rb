require 'spec_helper'

describe Stop do

  before :each do
    @stop0 = Stop.new()  #invalid stop
    @stop1 = Stop.new( :truck_id => 1, :location_id => 1, 
      :day => "Tuesdays" )
  end  # before :each

  it "is a stop" do
    @stop0.should be_an_instance_of Stop
  end  # is a stop

  it "is valid" do
    @stop1.should be_valid
  end  # is valid

  it "is invalid without a truck or location or day" do
    @stop0.should have(1).error_on(:truck_id)
    @stop0.should have(1).error_on(:location_id)
    @stop0.should_not be_valid
  end

end
