require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'developers'" do
    it "returns http success" do
      get 'developers'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'tecnico'" do
    it "returns http success" do
      get 'tecnico'
      response.should be_success
    end
  end

  describe "GET 'administrador'" do
    it "returns http success" do
      get 'administrador'
      response.should be_success
    end
  end
  
  describe "GET 'aluno'" do
    it "returns http success" do
      get 'aluno'
      response.should be_success
    end
  end
  
  describe "GET 'docente'" do
    it "returns http success" do
      get 'docente'
      response.should be_success
    end
  end
end
