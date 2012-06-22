require 'spec_helper'

describe "one_time_stops/show" do
  before(:each) do
    @one_time_stop = assign(:one_time_stop, stub_model(OneTimeStop,
      :truck_id => 1,
      :location_id => 2,
      :start_time => 3,
      :end_time => 4,
      :cancelled_flag => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/false/)
  end
end
