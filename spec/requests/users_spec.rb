require 'rails_helper'

RSpec.describe "Users", :type => :request do

  context "Signed In User" do

    before(:each) do
  	  account = create(:account , id: 12 , name: "Admindd")
      @user=create(:user , account: account)
      log_in_as_valid_user(@user)
    end

	it "GET users/index (Show Users)" do
      get users_path
      expect(response).to have_http_status(200)
    end

    it "GET users/1/edit (Edit User)" do
      get edit_user_path(@user)
      expect(response).to have_http_status(200)
    end

    it "GET users/1/ (Show User)" do
      get user_path(@user)
      expect(response).to have_http_status(200)
    end

    it "PUT users/1/ (Update User)" do
      put user_path(@user)
      expect(response).to have_http_status(200)
    end

    it "DELETE users/1/ (Delete User)" do
      delete user_path(@user)
      expect(response).to have_http_status(200)
    end

  end
    
end
