require 'spec_helper'

feature "Trucks", %q{
} do

  background do
    @truck1 = Truck.create( :name => "Truck 1" )
    @hood1 = Neighborhood.create( :name => "Hood 1" )
    @location1 = Location.create( 
                   :address => "Address 1",
                   :neighborhood_id => @hood1
    )
    @location2 = Location.create( 
                   :address => "Address 2",
                   :neighborhood_id => @hood1
    )
    @stop1 = OneTimeStop.create( 
      :truck_id => 1,
      :location_id => 1,
      :day => Date.today.to_s,
      :start_time => 1100,
      :end_time => 1400
    )
    @stop2 = RecurringStop.create(
      :truck_id => 1,
      :location_id => 2,
      :day_of_week => Date.today.strftime('%A')
    )
  end

  scenario "Add a new stop to the first truck page" do
 
    # visit and validate the truck page
    visit '/trucks/1'
    page.should have_content "Name: #{@truck1.name}"
    page.should have_link "New Stop"

    # click the new stop link, validate the new page
    click_link "New Stop"
    page.should have_content "Truck 1"

    # fill in the form to create a new stop
    select @location2.address, :from => 'Location'
    fill_in 'Day', :with => Date.today.to_s
    
    # click the create stop button, then the truck link
    click_button 'Create Stop'
    click_link @truck1.name
    page.should have_content "Name: #{@truck1.name}"

  end

  scenario "Show recurring stops for first truck" do
    visit '/trucks/1/recurring_stops'
    page.should have_content "Address 2"
  end

  scenario "Show page for first truck" do
    visit '/trucks/1'
    page.should have_content "Truck 1"
  end

  scenario "Confirm 'Show' link for first stop" do
    visit '/trucks/1'
    page.should have_xpath "//a[@href='/one_time_stops/1']"
  end

  scenario "Confirm 'Edit' link for the  first stop" do
    visit '/trucks/1'
    page.should have_xpath "//a[@href='/one_time_stops/1/edit']"
  end

end


