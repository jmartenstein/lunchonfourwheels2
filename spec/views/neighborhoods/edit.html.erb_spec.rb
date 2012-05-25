require 'spec_helper'

describe "neighborhoods/edit" do
  before(:each) do
    @neighborhood = assign(:neighborhood, stub_model(Neighborhood,
      :name => "MyString"
    ))
  end

  it "renders the edit neighborhood form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => neighborhoods_path(@neighborhood), :method => "post" do
      assert_select "input#neighborhood_name", :name => "neighborhood[name]"
    end
  end
end
