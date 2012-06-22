require 'spec_helper'

describe "one_time_stops/index" do
  before(:each) do
    assign(:one_time_stops, [
      stub_model(OneTimeStop,
        :truck_id => 1,
        :location_id => 2,
        :start_time => 3,
        :end_time => 4,
        :cancelled_flag => false
      ),
      stub_model(OneTimeStop,
        :truck_id => 1,
        :location_id => 2,
        :start_time => 3,
        :end_time => 4,
        :cancelled_flag => false
      )
    ])
  end

  it "renders a list of one_time_stops" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
