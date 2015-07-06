require 'rails_helper'

RSpec.describe "assets/index", :type => :view do
  before(:each) do
    assign(:assets, create_list(:asset, 5 ) )
  end

  it "renders a list of assets" do
    render
    assert_select "tr>td", :count => 5
    assert_select "tr>td", :count => 5
  end
end
