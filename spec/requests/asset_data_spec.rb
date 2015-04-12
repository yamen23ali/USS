require 'rails_helper'

RSpec.describe "AssetData", :type => :request do
  describe "GET /asset_data" do
    it "works! (now write some real specs)" do
      get asset_data_index_path
      expect(response).to have_http_status(200)
    end
  end
end
