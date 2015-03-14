require 'rails_helper'

RSpec.describe "SubCategories", :type => :request do

  let(:sub_category) { create(:sub_category) }
 
  context "Signed In User" do

    before(:each) do
      account = create(:account , id: 12 , name: "test")
      @user=create(:user , account: account)
      log_in_as_valid_user(@user)
    end

    it "GET sub_category/index (Show Sub Category)" do
      get sub_category_path(sub_category)
      expect(response).to have_http_status(200)
    end

    it "GET sub_category/1/edit (Edit Sub Category)" do
      get edit_sub_category_path(sub_category)
      expect(response).to have_http_status(200)
    end

    it "GET sub_category/1/ (Show Sub Category)" do
      get sub_category_path(sub_category)
      expect(response).to have_http_status(200)
    end

    it "PUT sub_category/1/ (Update Sub Category)" do
      put sub_category_path(sub_category)
      expect(response).to have_http_status(200)
    end

    it "DELETE sub_category/1/ (Delete Sub Category)" do
      delete sub_category_path(sub_category)
      expect(response).to have_http_status(200)
    end
    
  end

end
