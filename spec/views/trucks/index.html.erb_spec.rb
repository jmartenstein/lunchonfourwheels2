require 'spec_helper'

describe "trucks/index" do
  before(:each) do
    assign(:trucks, [
      stub_model(Truck,
        :name => "Name",
        :website => "Website",
        :twitter => "Twitter",
        :yelp => "Yelp"
      ),
      stub_model(Truck,
        :name => "Name",
        :website => "Website",
        :twitter => "Twitter",
        :yelp => "Yelp"
      )
    ])
  end

  it "renders a list of trucks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Yelp".to_s, :count => 2
  end
end
