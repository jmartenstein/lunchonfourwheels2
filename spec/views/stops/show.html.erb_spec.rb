require 'spec_helper'

describe "stops/show" do
  before(:each) do
    @stop = assign(:stop, stub_model(Stop,
      :truck_id => 1,
      :location_id => 2,
      :day => "Day",
      :hours => "Hours"
    ))
    @truck = assign(:truck, stub_model(Truck,
      :truck_name => "Truck"
    ))
    @neighborhood = assign(:neighborhood, stub_model(Neighborhood,
      :neighborhood_name => "Neighborhood"
    ))
    @location = assign(:location, stub_model(Location,
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Truck/)
    rendered.should match(/Neighborhood/)
    rendered.should match(/Address/)
    rendered.should match(/Day/)
    rendered.should match(/Hours/)
  end
end
