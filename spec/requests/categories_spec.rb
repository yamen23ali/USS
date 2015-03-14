require 'rails_helper'

RSpec.describe "Categories", :type => :request do
  
  let(:category) { create(:category) }
 
  context "Signed In User" do

    before(:each) do
      account = create(:account , id: 12 , name: "test")
      @user=create(:user , account: account)
      log_in_as_valid_user(@user)
    end

    it "GET category/index (Show Category)" do
      get category_path(category)
      expect(response).to have_http_status(200)
    end

    it "GET category/1/edit (Edit Category)" do
      get edit_category_path(category)
      expect(response).to have_http_status(200)
    end

    it "GET category/1/ (Show Category)" do
      get category_path(category)
      expect(response).to have_http_status(200)
    end

    it "PUT category/1/ (Update Category)" do
      put category_path(category)
      expect(response).to have_http_status(200)
    end

    it "DELETE category/1/ (Delete Category)" do
      delete category_path(category)
      expect(response).to have_http_status(200)
    end
    
  end

end
