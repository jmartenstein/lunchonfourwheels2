require 'spec_helper'

feature "Trucks", %q{
} do

  background do
    @truck1 = Truck.create( :name => "Truck 1" )
    @location1 = Location.create( :address => "Address 1" )
    @stop1 = Stop.create( 
      :truck_id => 1,
      :location_id => 1,
      :day => Date.today.to_s,
      :hours => "Hours"
    )
  end

  scenario "Add a new stop to the Marination Mobile page" do
    visit '/trucks/1'
    page.should have_link "New Stop"
    click_link "New Stop"
    page.shoud have_content "Truck 1"
  end

  scenario "Show page for first truck (Marination Mobile)" do
    visit '/trucks/1'
    page.should have_content "Truck 1"
  end

  scenario "Confirm 'Show' link for first Marination stop" do
    visit '/trucks/1'
    page.should have_xpath "//a[@href='/stops/1']"
  end

  scenario "Confirm 'Edit' link for the  first Marination stop" do
    visit '/trucks/1'
    page.should have_xpath "//a[@href='stops/1/edit']"
  end

end


