require 'spec_helper'

describe "neighborhoods/index" do
  before(:each) do
    assign(:neighborhoods, [
      stub_model(Neighborhood,
        :name => "Name"
      ),
      stub_model(Neighborhood,
        :name => "Name"
      )
    ])
  end

  it "renders a list of neighborhoods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
