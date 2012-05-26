require 'spec_helper'

describe "stops/show" do
  before(:each) do
    @stop = assign(:stop, stub_model(Stop,
      :truck_id => 1,
      :location_id => 2,
      :day => "Day",
      :hours => "Hours"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Day/)
    rendered.should match(/Hours/)
  end
end
