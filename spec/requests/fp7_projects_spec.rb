require 'spec_helper'

describe "Fp7Projects" do
  describe "GET /fp7_projects" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get fp7_projects_path
      response.status.should be(200)
    end
  end
end
