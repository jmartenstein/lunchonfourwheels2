require "spec_helper"

describe TrucksController do
  describe "routing" do

    it "routes to #index" do
      get("/trucks").should route_to("trucks#index")
    end

    it "routes to #new" do
      get("/trucks/new").should route_to("trucks#new")
    end

    it "routes to #show" do
      get("/trucks/1").should route_to("trucks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/trucks/1/edit").should route_to("trucks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/trucks").should route_to("trucks#create")
    end

    it "routes to #update" do
      put("/trucks/1").should route_to("trucks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/trucks/1").should route_to("trucks#destroy", :id => "1")
    end

  end
end
