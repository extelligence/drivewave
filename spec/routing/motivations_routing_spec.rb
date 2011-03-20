require "spec_helper"

describe MotivationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/motivations" }.should route_to(:controller => "motivations", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/motivations/new" }.should route_to(:controller => "motivations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/motivations/1" }.should route_to(:controller => "motivations", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/motivations/1/edit" }.should route_to(:controller => "motivations", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/motivations" }.should route_to(:controller => "motivations", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/motivations/1" }.should route_to(:controller => "motivations", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/motivations/1" }.should route_to(:controller => "motivations", :action => "destroy", :id => "1")
    end

  end
end
