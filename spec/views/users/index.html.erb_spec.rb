require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :tel => "Tel",
        :mobile => "Mobile",
        :address => "Address",
        :contact_email => "Contact Email",
        :facebook => "Facebook",
        :twitter => "Twitter",
        :instagram => "Instagram",
        :photo => "Photo"
      ),
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :tel => "Tel",
        :mobile => "Mobile",
        :address => "Address",
        :contact_email => "Contact Email",
        :facebook => "Facebook",
        :twitter => "Twitter",
        :instagram => "Instagram",
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Instagram".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end
