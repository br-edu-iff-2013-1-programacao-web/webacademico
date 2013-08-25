require 'spec_helper'

describe "Diarioalunos" do
  describe "GET /diarioalunos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get diarioalunos_path
      response.status.should be(200)
    end
  end
end
