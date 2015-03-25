require "rails_helper"

RSpec.describe AssetsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/assets").to route_to("assets#index")
    end

    it "routes to #new" do
      expect(:get => "/assets/new").to route_to("assets#new")
    end

    it "routes to #show" do
      expect(:get => "/assets/1").to route_to("assets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/assets/1/edit").to route_to("assets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/assets").to route_to("assets#create")
    end

    it "routes to #update" do
      expect(:put => "/assets/1").to route_to("assets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/assets/1").to route_to("assets#destroy", :id => "1")
    end

  end
end
