require 'spec_helper'

describe "one_time_stops/new" do
  before(:each) do
    assign(:one_time_stop, stub_model(OneTimeStop,
      :truck_id => 1,
      :location_id => 1,
      :start_time => 1,
      :end_time => 1,
      :cancelled_flag => false
    ).as_new_record)
  end

  it "renders new one_time_stop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => one_time_stops_path, :method => "post" do
      assert_select "input#one_time_stop_truck_id", :name => "one_time_stop[truck_id]"
      assert_select "input#one_time_stop_location_id", :name => "one_time_stop[location_id]"
      assert_select "input#one_time_stop_start_time", :name => "one_time_stop[start_time]"
      assert_select "input#one_time_stop_end_time", :name => "one_time_stop[end_time]"
      assert_select "input#one_time_stop_cancelled_flag", :name => "one_time_stop[cancelled_flag]"
    end
  end
end
