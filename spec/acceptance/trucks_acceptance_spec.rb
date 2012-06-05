require 'spec_helper'

feature "Trucks", %q{
} do

  background do
  end

  scenario "List index of all trucks" do
    visit '/trucks'
    page.should have_content "Marination Mobile"
    page.should have_xpath "//a[@href='/trucks/1']"
    page.should have_content "Skillet"
  end

  scenario "Show page for first truck (Marination Mobile)" do
    visit '/trucks/1'
    page.should have_content "Marination Mobile"
  end

  scenario "Click link for first Marination stop" do
    visit '/trucks/1'
    page.should have_xpath "//[@href='/stops/1']"
  end

end


