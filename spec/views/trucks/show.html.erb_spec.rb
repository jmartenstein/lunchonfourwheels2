require 'spec_helper'

describe "trucks/show" do
  before(:each) do
    @truck = assign(:truck, stub_model(Truck,
      :name => "Name",
      :website => "Website",
      :twitter => "Twitter",
      :yelp => "Yelp"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Website/)
    rendered.should match(/Twitter/)
    rendered.should match(/Yelp/)
  end
end
