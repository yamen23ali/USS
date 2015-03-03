require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Instagram/)
    expect(rendered).to match(/Photo/)
  end
end
