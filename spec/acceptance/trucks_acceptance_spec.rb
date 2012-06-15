require 'spec_helper'

feature "Trucks", %q{
} do

  background do
  end

  scenario "Add a new stop to the Marination Mobile page" do
    visit '/trucks/1'
    page.should have_link "New Stop"
    click_link "New Stop"
    page.shoud have_content "Marination"
  end

  scenario "Show page for first truck (Marination Mobile)" do
    visit '/trucks/1'
    page.should have_content "Marination Mobile"
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


