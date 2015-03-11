require 'rails_helper'

RSpec.describe "Descriptors", :type => :request do
  describe "GET /descriptors" do
    it "works! (now write some real specs)" do
      get descriptors_path
      expect(response).to have_http_status(200)
    end
  end
end
