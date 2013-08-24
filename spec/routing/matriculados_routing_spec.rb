require "spec_helper"

describe MatriculadosController do
  describe "routing" do

    it "routes to #index" do
      get("/matriculados").should route_to("matriculados#index")
    end

    it "routes to #new" do
      get("/matriculados/new").should route_to("matriculados#new")
    end

    it "routes to #show" do
      get("/matriculados/1").should route_to("matriculados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/matriculados/1/edit").should route_to("matriculados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/matriculados").should route_to("matriculados#create")
    end

    it "routes to #update" do
      put("/matriculados/1").should route_to("matriculados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/matriculados/1").should route_to("matriculados#destroy", :id => "1")
    end

  end
end
