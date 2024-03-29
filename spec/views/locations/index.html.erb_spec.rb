require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :latitude => 1.5,
        :longitude => 2.5,
        :address => "Address",
        :description => "Description",
        :neighborhood_id => 1,
        :city_state => "City State"
      ),
      stub_model(Location,
        :latitude => 1.5,
        :longitude => 2.5,
        :address => "Address",
        :description => "Description",
        :neighborhood_id => 1,
        :city_state => "City State"
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "City State".to_s, :count => 2
  end
end
