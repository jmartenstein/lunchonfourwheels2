require 'spec_helper'

describe "recurring_stops/new" do
  before(:each) do
    assign(:recurring_stop, stub_model(RecurringStop,
      :truck_id => 1,
      :location_id => 1,
      :day_of_week => 1,
      :start_time => 1,
      :end_time => 1
    ).as_new_record)
  end

  it "renders new recurring_stop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recurring_stops_path, :method => "post" do
      assert_select "input#recurring_stop_truck_id", :name => "recurring_stop[truck_id]"
      assert_select "input#recurring_stop_location_id", :name => "recurring_stop[location_id]"
      assert_select "input#recurring_stop_day_of_week", :name => "recurring_stop[day_of_week]"
      assert_select "input#recurring_stop_start_time", :name => "recurring_stop[start_time]"
      assert_select "input#recurring_stop_end_time", :name => "recurring_stop[end_time]"
    end
  end
end
