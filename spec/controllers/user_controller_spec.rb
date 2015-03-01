require 'rails_helper'

describe UserController do
  include UserSignInHelper
  
  before(:each) do
  	sign_in_as_a_valid_user
  end

  it "returns http success" do
    get :index
    expect(response).to have_http_status(:success)
  end

end
