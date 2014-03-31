require 'spec_helper'

describe "Fp7Contractors" do
  describe "GET /fp7_contractors" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get fp7_contractors_path
      response.status.should be(200)
    end
  end
end
