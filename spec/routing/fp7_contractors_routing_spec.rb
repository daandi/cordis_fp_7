require "spec_helper"

describe Fp7ContractorsController do
  describe "routing" do

    it "routes to #index" do
      get("/fp7_contractors").should route_to("fp7_contractors#index")
    end

    it "routes to #new" do
      get("/fp7_contractors/new").should route_to("fp7_contractors#new")
    end

    it "routes to #show" do
      get("/fp7_contractors/1").should route_to("fp7_contractors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fp7_contractors/1/edit").should route_to("fp7_contractors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fp7_contractors").should route_to("fp7_contractors#create")
    end

    it "routes to #update" do
      put("/fp7_contractors/1").should route_to("fp7_contractors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fp7_contractors/1").should route_to("fp7_contractors#destroy", :id => "1")
    end

  end
end
