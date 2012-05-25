require 'spec_helper'

describe "locations/show" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "Address",
      :description => "Description",
      :neighborhood_id => 1,
      :city_state => "City State"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Address/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/City State/)
  end
end
