require 'spec_helper'

describe OneTimeStop do

  before :each do
    @one_time_stop0 = OneTimeStop.new()  # invalid stop
    @one_time_stop1 = OneTimeStop.new(
                        :truck_id => 1,
                        :location_id => 1,
                        :day => Date.today.to_s 
                      )
  end  # before :each

  it "is valid" do
    @one_time_stop1.should be_valid
  end  # is valid

  it "is invalid with an empty object" do
    @one_time_stop0.should have(1).error_on(:truck_id)
    @one_time_stop0.should have(1).error_on(:location_id)
    @one_time_stop0.should have(1).error_on(:day)
    @one_time_stop0.should_not be_valid
  end

end
