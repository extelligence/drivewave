require "spec_helper"

describe ThemesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/themes" }.should route_to(:controller => "themes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/themes/new" }.should route_to(:controller => "themes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/themes/1" }.should route_to(:controller => "themes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/themes/1/edit" }.should route_to(:controller => "themes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/themes" }.should route_to(:controller => "themes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/themes/1" }.should route_to(:controller => "themes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/themes/1" }.should route_to(:controller => "themes", :action => "destroy", :id => "1")
    end

  end
end
