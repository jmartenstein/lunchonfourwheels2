require 'spec_helper'

describe "OneTimeStops" do
  describe "GET /one_time_stops" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get one_time_stops_path
      response.status.should be(200)
    end
  end
end
