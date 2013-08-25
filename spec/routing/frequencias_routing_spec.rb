require "spec_helper"

describe FrequenciasController do
  describe "routing" do

    it "routes to #index" do
      get("/frequencias").should route_to("frequencias#index")
    end

    it "routes to #new" do
      get("/frequencias/new").should route_to("frequencias#new")
    end

    it "routes to #show" do
      get("/frequencias/1").should route_to("frequencias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/frequencias/1/edit").should route_to("frequencias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/frequencias").should route_to("frequencias#create")
    end

    it "routes to #update" do
      put("/frequencias/1").should route_to("frequencias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/frequencias/1").should route_to("frequencias#destroy", :id => "1")
    end

  end
end
