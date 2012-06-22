require 'spec_helper'

describe "recurring_stops/show" do
  before(:each) do
    @recurring_stop = assign(:recurring_stop, stub_model(RecurringStop,
      :truck_id => 1,
      :location_id => 2,
      :day_of_week => 3,
      :start_time => 4,
      :end_time => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
