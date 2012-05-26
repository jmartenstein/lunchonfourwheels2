require 'spec_helper'

describe "stops/edit" do
  before(:each) do
    @stop = assign(:stop, stub_model(Stop,
      :truck_id => 1,
      :location_id => 1,
      :day => "MyString",
      :hours => "MyString"
    ))
  end

  it "renders the edit stop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stops_path(@stop), :method => "post" do
      assert_select "input#stop_truck_id", :name => "stop[truck_id]"
      assert_select "input#stop_location_id", :name => "stop[location_id]"
      assert_select "input#stop_day", :name => "stop[day]"
      assert_select "input#stop_hours", :name => "stop[hours]"
    end
  end
end
