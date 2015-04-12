require 'rails_helper'

RSpec.describe "assets/index", :type => :view do
  before(:each) do
    assign(:assets, [
      Asset.create!(
        :category_id => 1,
        :sub_category_id => 2
      ),
      Asset.create!(
        :category_id => 1,
        :sub_category_id => 2
      )
    ])
  end

  it "renders a list of assets" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
