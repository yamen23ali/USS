require "rails_helper"

RSpec.describe AssetDataController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/asset_data").to route_to("asset_data#index")
    end

    it "routes to #new" do
      expect(:get => "/asset_data/new").to route_to("asset_data#new")
    end

    it "routes to #show" do
      expect(:get => "/asset_data/1").to route_to("asset_data#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/asset_data/1/edit").to route_to("asset_data#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/asset_data").to route_to("asset_data#create")
    end

    it "routes to #update" do
      expect(:put => "/asset_data/1").to route_to("asset_data#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/asset_data/1").to route_to("asset_data#destroy", :id => "1")
    end

  end
end
