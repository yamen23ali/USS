require 'rails_helper'

RSpec.describe "Descriptors", :type => :request do
  
  let(:descriptor) { create(:descriptor) }
 
  context "Signed In User" do

    before(:each) do
      account = create(:account , id: 12 , name: "test")
      @user=create(:user , account: account)
      log_in_as_valid_user(@user)
    end

    it "GET descriptor/index (Show Descriptor)" do
      get descriptor_path(descriptor)
      expect(response).to have_http_status(200)
    end

    it "GET descriptor/1/edit (Edit Descriptor)" do
      get descriptor_path(descriptor)
      expect(response).to have_http_status(200)
    end

    it "GET descriptor/1/ (Show Descriptor)" do
      get descriptor_path(descriptor)
      expect(response).to have_http_status(200)
    end

    it "PUT descriptor/1/ (Update Descriptor)" do
      put descriptor_path(descriptor)
      expect(response).to have_http_status(200)
    end

    it "DELETE descriptor/1/ (Delete Descriptor)" do
      delete descriptor_path(descriptor)
      expect(response).to have_http_status(200)
    end
    
  end

end
