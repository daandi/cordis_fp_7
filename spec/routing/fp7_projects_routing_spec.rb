require "spec_helper"

describe Fp7ProjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/fp7_projects").should route_to("fp7_projects#index")
    end

    it "routes to #new" do
      get("/fp7_projects/new").should route_to("fp7_projects#new")
    end

    it "routes to #show" do
      get("/fp7_projects/1").should route_to("fp7_projects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fp7_projects/1/edit").should route_to("fp7_projects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fp7_projects").should route_to("fp7_projects#create")
    end

    it "routes to #update" do
      put("/fp7_projects/1").should route_to("fp7_projects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fp7_projects/1").should route_to("fp7_projects#destroy", :id => "1")
    end

  end
end
