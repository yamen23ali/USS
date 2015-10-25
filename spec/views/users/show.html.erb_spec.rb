require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = create(:user)
  end
 
  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@user.first_name)
    expect(rendered).to match(@user.last_name)
    expect(rendered).to match(@user.tel)
    expect(rendered).to match(@user.mobile)
    expect(rendered).to match(@user.address)
    expect(rendered).to match(@user.contact_email)
    expect(rendered).to match(@user.facebook)
    expect(rendered).to match(@user.twitter)
    expect(rendered).to match(@user.instagram)
  end
end
