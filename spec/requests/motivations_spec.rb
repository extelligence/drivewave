require 'spec_helper'

describe "Motivations" do
  describe "GET /motivations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get motivations_path
      response.status.should be(200)
    end
  end
end
