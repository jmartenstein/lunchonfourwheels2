require 'spec_helper'

feature "Stops", %q{
} do

  background do
    @marination_truck = Truck.find_by_id(1)
  end

  scenario "Stop shows truck name instead of id" do
    visit '/stops/1'
    page.should have_content @marination_truck.name
  end

end  # feature Stops
