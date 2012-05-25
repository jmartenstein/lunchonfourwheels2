require 'spec_helper'

describe "trucks/new" do
  before(:each) do
    assign(:truck, stub_model(Truck,
      :name => "MyString",
      :website => "MyString",
      :twitter => "MyString",
      :yelp => "MyString"
    ).as_new_record)
  end

  it "renders new truck form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trucks_path, :method => "post" do
      assert_select "input#truck_name", :name => "truck[name]"
      assert_select "input#truck_website", :name => "truck[website]"
      assert_select "input#truck_twitter", :name => "truck[twitter]"
      assert_select "input#truck_yelp", :name => "truck[yelp]"
    end
  end
end
