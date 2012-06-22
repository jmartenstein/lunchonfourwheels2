require "spec_helper"

describe OneTimeStopsController do
  describe "routing" do

    it "routes to #index" do
      get("/one_time_stops").should route_to("one_time_stops#index")
    end

    it "routes to #new" do
      get("/one_time_stops/new").should route_to("one_time_stops#new")
    end

    it "routes to #show" do
      get("/one_time_stops/1").should route_to("one_time_stops#show", :id => "1")
    end

    it "routes to #edit" do
      get("/one_time_stops/1/edit").should route_to("one_time_stops#edit", :id => "1")
    end

    it "routes to #create" do
      post("/one_time_stops").should route_to("one_time_stops#create")
    end

    it "routes to #update" do
      put("/one_time_stops/1").should route_to("one_time_stops#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/one_time_stops/1").should route_to("one_time_stops#destroy", :id => "1")
    end

  end
end
