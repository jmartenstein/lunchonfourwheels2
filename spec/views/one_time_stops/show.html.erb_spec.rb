require 'spec_helper'

describe "one_time_stops/show" do
  before(:each) do
    @one_time_stop = assign(:one_time_stop, stub_model(OneTimeStop,
      :truck_id => 1,
      :location_id => 1,
      :start_time => 3,
      :end_time => 4,
      :cancelled_flag => false
    ))
    @one_time_stop.truck = assign(:truck, stub_model(Truck,
      :name => "Truck Name"
    ))
    @one_time_stop.location = assign(:location, stub_model(Location,
      :address => "Location Address",
      :neighborhood_id => 1
    ))
    @one_time_stop.location.neighborhood = assign(:neighborhood, stub_model(Neighborhood,
      :name => "Neighborhood Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Truck Name/)
    rendered.should match(/Neighborhood Name/)
    rendered.should match(/Location Address/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/false/)
  end
end
