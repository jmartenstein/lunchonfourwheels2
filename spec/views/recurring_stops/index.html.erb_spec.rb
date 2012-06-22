require 'spec_helper'

describe "recurring_stops/index" do
  before(:each) do
    assign(:recurring_stops, [
      stub_model(RecurringStop,
        :truck_id => 1,
        :location_id => 2,
        :day_of_week => 3,
        :start_time => 4,
        :end_time => 5
      ),
      stub_model(RecurringStop,
        :truck_id => 1,
        :location_id => 2,
        :day_of_week => 3,
        :start_time => 4,
        :end_time => 5
      )
    ])
  end

  it "renders a list of recurring_stops" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
