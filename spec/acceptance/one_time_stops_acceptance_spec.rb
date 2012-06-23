require 'spec_helper'

feature "Stops", %q{
} do

  background do
    @truck1         = Truck.create( name: "Truck 1" )
    @neighborhood   = Neighborhood.create( name: "Neighborhood 2" ) 
    @location1      = Location.create( 
                        address: "1 Address St.",
                        neighborhood_id: 1
                      )
    @stop1          = OneTimeStop.create(
                        truck_id: 1,
                        location_id: 1,
                        day: Date.today.to_s,
                        start_time: 1100,
                        end_time: 1400
                      )
  end

  scenario "Stop shows truck name instead of id" do
    visit '/one_time_stops/1'
    page.should have_content @truck1.name
    page.should have_content @location1.address
  end

  scenario "Stop edit page shows truck and location info" do
    visit '/one_time_stops/1/edit'
    page.should have_content @truck1.name
    page.should have_content @location1.address
    #page.should have_content @stop1.day
  end

end  # feature Stops
