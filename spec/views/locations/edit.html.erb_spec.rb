require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyString",
      :neighborhood_id => 1,
      :city_state => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path(@location), :method => "post" do
      assert_select "input#location_latitude", :name => "location[latitude]"
      assert_select "input#location_longitude", :name => "location[longitude]"
      assert_select "input#location_address", :name => "location[address]"
      assert_select "input#location_description", :name => "location[description]"
      assert_select "input#location_neighborhood_id", :name => "location[neighborhood_id]"
      assert_select "input#location_city_state", :name => "location[city_state]"
    end
  end
end
