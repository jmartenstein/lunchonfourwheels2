require 'spec_helper'

describe "trucks/show" do
  before(:each) do
    @truck = assign(:truck, stub_model(Truck,
      :name => "Name",
      :website => "Website",
      :twitter => "Twitter",
      :yelp => "Yelp"
    ))
    @location = assign(:location, stub_model(Location,
      :address => "Address"
    ))
    @this_weeks_stops = assign(:stops, [
      stub_model(Stop,
        :truck_id => 1,
        :location => @location,
        :day => Date.today.to_s,
        :hours => "Hours"
      ),
      stub_model(Stop,
        :truck_id => 1,
        :location => @location,
        :day => Date.today.to_s,
        :hours => "Hours"
      )
    ])
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Website/)
    rendered.should match(/Twitter/)
    rendered.should match(/Yelp/)
    assert_select "tr>td", :text => "Address", :count => 2
    assert_select "tr>td", :text => Date.today.to_s, :count => 2
    assert_select "tr>td", :text => "Hours", :count => 2
  end
end
