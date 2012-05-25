require 'spec_helper'

describe "locations/new" do
  before(:each) do
    assign(:location, stub_model(Location,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyString",
      :neighborhood_id => 1,
      :city_state => "MyString"
    ).as_new_record)
  end

  it "renders new location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path, :method => "post" do
      assert_select "input#location_latitude", :name => "location[latitude]"
      assert_select "input#location_longitude", :name => "location[longitude]"
      assert_select "input#location_address", :name => "location[address]"
      assert_select "input#location_description", :name => "location[description]"
      assert_select "input#location_neighborhood_id", :name => "location[neighborhood_id]"
      assert_select "input#location_city_state", :name => "location[city_state]"
    end
  end
end
