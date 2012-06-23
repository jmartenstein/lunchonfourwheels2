require 'spec_helper'

describe RecurringStop do

  before :each do
    @recurring_stop0 = RecurringStop.new()  # invalid stop
    @recurring_stop1 = RecurringStop.new(
                         :truck_id => 1,
                         :location_id => 1,
                         :day_of_week => 1
                       )
  end  # before :each

  it "is valid" do
    @recurring_stop1.should be_valid
  end  # is valid

  it "is invalid with an empty object" do
    @recurring_stop0.should have(1).error_on(:truck_id)
    @recurring_stop0.should have(1).error_on(:location_id)
    @recurring_stop0.should have(1).error_on(:day_of_week)
    @recurring_stop0.should_not be_valid
  end

end
