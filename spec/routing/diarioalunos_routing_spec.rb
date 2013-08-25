require "spec_helper"

describe DiarioalunosController do
  describe "routing" do

    it "routes to #index" do
      get("/diarioalunos").should route_to("diarioalunos#index")
    end

    it "routes to #new" do
      get("/diarioalunos/new").should route_to("diarioalunos#new")
    end

    it "routes to #show" do
      get("/diarioalunos/1").should route_to("diarioalunos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/diarioalunos/1/edit").should route_to("diarioalunos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/diarioalunos").should route_to("diarioalunos#create")
    end

    it "routes to #update" do
      put("/diarioalunos/1").should route_to("diarioalunos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/diarioalunos/1").should route_to("diarioalunos#destroy", :id => "1")
    end

  end
end
