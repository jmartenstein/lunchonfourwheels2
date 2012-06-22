require 'spec_helper'

describe "one_time_stops/edit" do
  before(:each) do
    @one_time_stop = assign(:one_time_stop, stub_model(OneTimeStop,
      :truck_id => 1,
      :location_id => 1,
      :start_time => 1,
      :end_time => 1,
      :cancelled_flag => false
    ))
  end

  it "renders the edit one_time_stop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => one_time_stops_path(@one_time_stop), :method => "post" do
      assert_select "input#one_time_stop_truck_id", :name => "one_time_stop[truck_id]"
      assert_select "input#one_time_stop_location_id", :name => "one_time_stop[location_id]"
      assert_select "input#one_time_stop_start_time", :name => "one_time_stop[start_time]"
      assert_select "input#one_time_stop_end_time", :name => "one_time_stop[end_time]"
      assert_select "input#one_time_stop_cancelled_flag", :name => "one_time_stop[cancelled_flag]"
    end
  end
end
