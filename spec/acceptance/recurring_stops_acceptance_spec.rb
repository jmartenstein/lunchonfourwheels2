require 'spec_helper'

feature "Recurring Stops", %q{
} do

  background do
    @truck1 = Truck.create( :name => "Truck 1" )
    @truck2 = Truck.create( :name => "Truck 2" )
    @hood1 = Neighborhood.create( :name => "Hood 1" )
    @location1 = Location.create(
                   :address => "Address 1",
                   :neighborhood_id => @hood1
                 )
  end  # background

  scenario "Create new recurring stop" do

    visit '/trucks/1/recurring_stops'

    click_link 'New Recurring Stop'
    page.should have_content "Name: #{@truck1.name}"

    select @location1.address, :from => "Location"
    select 'Monday', :from => "Day of Week"

    click_button "Create Recurring Stop"
    page.should have_content "Name: #{@truck1.name}"
    page.should have_content "Location: #{@location1.address}"

  end  # create new recurring stop

end  # feature Recurring Stops
