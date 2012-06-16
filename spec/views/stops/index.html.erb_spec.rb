require 'spec_helper'

describe "stops/index" do
  before(:each) do
    assign(:stops, [
      stub_model(Stop,
        :truck_id => 1,
        :location_id => 2,
        :day => Date.today.to_s,
        :hours => "Hours"
      ),
      stub_model(Stop,
        :truck_id => 1,
        :location_id => 2,
        :day => Date.today.to_s,
        :hours => "Hours"
      )
    ])
  end

  it "renders a list of stops" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => Date.today.to_s, :count => 2
    assert_select "tr>td", :text => "Hours".to_s, :count => 2
  end
end
