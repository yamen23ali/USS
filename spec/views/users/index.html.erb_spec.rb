require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  
  before(:each) do
    @user = create(:user)
    @users =[ @user , @user ]
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => @user.first_name.to_s, :count => 2
    assert_select "tr>td", :text => @user.last_name.to_s, :count => 2
    assert_select "tr>td", :text => @user.tel.to_s, :count => 2
    assert_select "tr>td", :text => @user.mobile.to_s, :count => 2
    assert_select "tr>td", :text => @user.address.to_s, :count => 2
    assert_select "tr>td", :text => @user.contact_email.to_s, :count => 2
    assert_select "tr>td", :text => @user.facebook.to_s, :count => 2
    assert_select "tr>td", :text => @user.twitter.to_s, :count => 2
    assert_select "tr>td", :text => @user.instagram.to_s, :count => 2
    assert_select "tr>td", :text => @user.photo.to_s, :count => 2
  end

end
