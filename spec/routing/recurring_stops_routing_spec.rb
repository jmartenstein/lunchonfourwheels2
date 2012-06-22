require "spec_helper"

describe RecurringStopsController do
  describe "routing" do

    it "routes to #index" do
      get("/recurring_stops").should route_to("recurring_stops#index")
    end

    it "routes to #new" do
      get("/recurring_stops/new").should route_to("recurring_stops#new")
    end

    it "routes to #show" do
      get("/recurring_stops/1").should route_to("recurring_stops#show", :id => "1")
    end

    it "routes to #edit" do
      get("/recurring_stops/1/edit").should route_to("recurring_stops#edit", :id => "1")
    end

    it "routes to #create" do
      post("/recurring_stops").should route_to("recurring_stops#create")
    end

    it "routes to #update" do
      put("/recurring_stops/1").should route_to("recurring_stops#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/recurring_stops/1").should route_to("recurring_stops#destroy", :id => "1")
    end

  end
end
